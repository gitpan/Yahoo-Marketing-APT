package Yahoo::Marketing::APT::CustomSectionResponse;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Yahoo::Marketing::ComplexType/;

=head1 NAME

Yahoo::Marketing::APT::CustomSectionResponse - a data object to represent a CustomSectionResponse.

=cut

sub _user_setable_attributes {
    return ( qw/ 
                 customSection
                 errors
                 operationSucceeded
            /  );
}

sub _read_only_attributes {
    return ( qw/
           / );
}

__PACKAGE__->mk_accessors( __PACKAGE__->_user_setable_attributes, 
                           __PACKAGE__->_read_only_attributes
                         );


1;
=head1 SYNOPSIS

See L<http://help.yahoo.com/l/us/yahoo/amp/webservices/reference/data/> for documentation of the various data objects.


=cut

=head1 METHODS

=head2 new

Creates a new instance

=head2 get/set methods

=over 8

    customSection
    errors
    operationSucceeded

=back

=head2 get (read only) methods

=over 8


=back

=cut

