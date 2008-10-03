package Yahoo::Marketing::APT::Test::CustomSegmentDescriptor;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::CustomSegmentDescriptor;

sub test_can_create_custom_segment_descriptor_and_set_all_fields : Test(4) {

    my $custom_segment_descriptor = Yahoo::Marketing::APT::CustomSegmentDescriptor->new
                                                                             ->ID( 'id' )
                                                                             ->accountID( 'account id' )
                                                                             ->name( 'name' )
                   ;

    ok( $custom_segment_descriptor );

    is( $custom_segment_descriptor->ID, 'id', 'can get id' );
    is( $custom_segment_descriptor->accountID, 'account id', 'can get account id' );
    is( $custom_segment_descriptor->name, 'name', 'can get name' );

};



1;

