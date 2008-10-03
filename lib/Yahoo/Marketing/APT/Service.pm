package Yahoo::Marketing::APT::Service;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997)

use strict; use warnings;
use Carp;
use YAML qw/DumpFile LoadFile Dump/;

use base qw/Yahoo::Marketing::APT Yahoo::Marketing::Service/;


# need to override @simple_type_exceptions!

my @simple_type_exceptions = (qw/
    AccountDescriptorType
    AccountStatus
    AccountType
    AdFormat
    AdGroupStatus
    AdLinkingType
    AdStatus
    AdType
    AgreementStatus
    ApprovalObjectType
    ApprovalStatus
    ApprovalTaskContext
    ApprovalTaskStatus
    ApprovalTrigger
    ApprovalType 
    ApprovalWorkflowExecutionType
    ApprovalWorkflowNotificationType
    ApprovalWorkflowStatus
    AttributeValueType
    BuyType
    ColumnFormatType
    Context
    Country
    CreativeStatus
    CreativeType
    Currency
    CustomSegmentStatus
    DataGrouping
    DateRange
    DayOfTheWeek
    DealApprovalStatus
    DeliveryMethod
    DeliveryModel
    DistanceUnits
    EditorialStatus
    FileType
    FilterOperator
    FolderItemType
    FolderType
    Language
    LibraryAdStatus
    LinkedCompanyType
    LinkType
    OperationResult
    OptimizationMetric
    OrderContactType
    OrderDiscountFormat
    OrderDiscountType
    OrderFeeType
    OrderStatus
    ParentType
    PeriodicPriceType
    PerTransactionPriceType
    PixelCodeType
    PixelFrequencyType
    PlacementStatus
    PricingType
    PublisherSelectorType
    RateCardStatus
    ReportDateRange
    ReportExecutionStatus
    ReportFileType
    ReportFrequency
    RevenueModel
    Role
    SearchAccountType 
    SellingRuleType
    SiteAccessMethod
    SiteLanguage
    SiteSortBy
    SiteStatus
    TargetingAttributeType
    TimePeriodType
    TimeZone
    UserStatus
    WindowTarget
    YahooPremiumBehavioralSegmentTargetingProgram
			      /);


# override parse_config to use yahoo-marketing-apt.yml as the default config file
sub parse_config {
    my ( $self, %args ) = @_;

    $args{ path }    = 'yahoo-marketing-apt.yml' unless defined $args{ path };
    $args{ section } = 'default'             unless defined $args{ section };

    my $config = LoadFile( $args{ path } );

    foreach my $config_setting ( qw/ username password license endpoint uri version / ){
        my $value = $config->{ $args{ 'section' } }->{ $config_setting };
        croak "no configuration value found for $config_setting in $args{ path }\n"
            unless $value;
        $self->$config_setting( $value );
    }

    foreach my $config_setting ( qw/ default_account default_on_behalf_of_username default_on_behalf_of_password / ){
        my $value = $config->{ $args{ 'section' } }->{ $config_setting };
        my $setting_name = $config_setting;
        $setting_name =~ s/^default_//;
        # Maybe we should let the default overwrite ???
        $self->$setting_name( $value ) if defined $value and not defined $self->$setting_name;
    }

    return $self;
}

# override _location, since we cache endpoint with accountID now, instead of masterAccountID.
sub _location {
    my $self = shift;

    unless( $self->use_location_service ){
        return $self->endpoint.'/'.$self->version;
    }

    my $locations = $self->cache->get( 'locations' );

    if( $locations
	and $locations->{ $self->version }->{ $self->endpoint }
	and $locations->{ $self->version }->{ $self->endpoint }->{ $self->account } ){
        return $locations->{ $self->version }->{ $self->endpoint }->{ $self->account };
    }

    my $som = $self->_soap( $self->endpoint
                           .'/'
                           .$self->version
                           .'/LocationService'
                          )
	->getAccountLocation( $self->_headers() );

    if( $som->fault ){
        $self->fault( $self->_get_api_fault_from_som( $som ) );
        $self->_die_with_soap_fault( $som ) unless $self->immortal;
        warn "we could not determine the correct location endpoint, trying with default";
        return $self->endpoint.'/'.$self->version;
    }

    my $location = $som->valueof( '/Envelope/Body/getAccountLocationResponse/out' );

    die "failed to get Account Location!" unless $location;

    $location .= '/'.$self->version;

    $locations->{ $self->version }->{ $self->endpoint }->{ $self->account } = $location ;

    $self->cache->set( 'locations', $locations, $self->cache_expire_time );

    return $location;
}

sub _add_account_to_header { return 1; }  # default to true

sub _add_master_account_to_header { return 0; }  # default to false

sub _class_name {
    __PACKAGE__ =~ /^(.+)Service/;
    return $1;
}

# following should be deleted
sub _escape_xml_baddies {
    my ( $self, $input ) = @_;
    return unless defined $input;

    # trouble with HTML::Entities::encode_entities is it will happily double encode things
    # SOAP::Lite::encode_data also appears to have this problem
    $input =~ s/&(?![#\w]+;)/&amp;/g; # encode &, but not the & in already encoded string (&amp;)

    # if string is already wrapped <![CDATA[ ... ]]>, leave it as is.
    if ( $input =~ /^<\!\[CDATA\[(.+)\]\]>$/s ) {
        return $input;
    }
    # otherwise, encode < and >
    $input =~ s/</&lt;/g;             # encode <
    $input =~ s/>/&gt;/g;             # encode >
    return $input;
}


sub _deserialize {
    my ( $self, $method, $hash, $type ) = @_;

    my @return_values;

    my $obj;

    if( ref $hash eq 'ARRAY' ){
        return map { $self->_deserialize( $method, $_, $type ) } @{ $hash };
    }elsif( $type =~ /ArrayOf(.*)/ ){
        my $element_type = $1;
        return [ map { $self->_deserialize( $method, $_, $element_type ) } ( ref $hash eq 'ARRAY' ? @{ $hash } : values %$hash ) ];
    }elsif( $type !~ /^xsd:|^[Ss]tring$|^[Ii]nt$|^[Ll]ong$|^[Dd]ouble|^Continent$/
        and ! grep { $type =~ /^(tns:)?$_$/ } @simple_type_exceptions ){

        $type =~ s/^tns://;

        # pull it in
        my $pkg = $self->_class_name;
        my $class = ($pkg).ucfirst( $type );
        eval "require $class";

        die "whoops, couldn't load $class: $@" if $@;

        $obj = $class->new;
    }elsif( ref $hash ne 'HASH' ){
        return $hash;
    }else{  # this should never be reached
        confess "Please send this stack trace to the module author.\ntype = $type, hash = $hash";
    }

    foreach my $key ( keys %$hash ){
        if( not ref $hash->{ $key } ){
            $obj->$key( $hash->{ $key } );
        }elsif( ref $hash->{ $key } eq 'ARRAY' ){ # better have an array arguement mapping
                my $type = $self->_complex_type( $type, $key );

                return [ map { $self->_deserialize( $method, $_, $type ) } @{ $hash->{ $key } } ];
        }elsif( ref $hash->{ $key } eq 'HASH' ){
            my $type = $self->_complex_types( $type, $key );

            # special case for array types returning as just a hash with a single element.  Annoying.
            if( $type =~ /^ArrayOf/ ){
                $type = $self->_complex_types( $method, $type );
                $obj->$key( [ $self->_deserialize( $method, $hash->{ $key }->{ (keys %{ $hash->{ $key } })[0] }, $type ) ] );
                next;
            }

            $obj->$key( $self->_deserialize( $method, $hash->{ $key }, $type ) );
        }else{
            warn "can't handle $key in response yet ( $hash->{ $key } )\n";
        }
    }

    push @return_values, $obj;

    return wantarray
            ? @return_values
            : $return_values[0]
    ;
}

1; # end of Yahoo::Marketing::APT::Service


=head1 NAME

Yahoo::Marketing::APT::Service - a sub-class of Yahoo::Marketing::Service, and the base class of APT service modules

=head1 SYNOPSIS

This module is a base class for various Service modules (SiteService,
FolderService, ReportService, etc) to inherit from.  It should not be used directly.

There are some methods common to all Services that are documented below.

See also perldoc Yahoo::Marketing::APT::RateCardService
                                   ...::SiteClassificationService
                                   ...::SiteService
                                   ...::FlashCreativeService
                                   ...::FolderService
                                   ...::ImageCreativeService
                                   ...::LibraryCustomHTMLAdService
                                   ...::LibraryFlashAdService
                                   ...::LibraryImageAdService
                                   ...::LibraryThirdPartyAdService
                                   ...::AccountService
                                   ...::GeographicalTargetingService
                                   ...::ReportService
                                   ...::TargetingDictionaryService

Please see the API docs at

TBD

for details about what methods are available from each of the Services.

=head1 SEE ALSO

Yahoo::Marketing::Service L<http://search.cpan.org/dist/Yahoo-Marketing/lib/Yahoo/Marketing/Service.pm>

