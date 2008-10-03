package Yahoo::Marketing::APT::Test::AdGroupNonGuaranteedSettings;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::AdGroupNonGuaranteedSettings;

sub test_can_create_ad_group_non_guaranteed_settings_and_set_all_fields : Test(4) {

    my $ad_group_non_guaranteed_settings = Yahoo::Marketing::APT::AdGroupNonGuaranteedSettings->new
                                                                                         ->ROITarget( 'roitarget' )
                                                                                         ->adOptimization( 'ad optimization' )
                                                                                         ->bidDescriptor( 'bid descriptor' )
                   ;

    ok( $ad_group_non_guaranteed_settings );

    is( $ad_group_non_guaranteed_settings->ROITarget, 'roitarget', 'can get roitarget' );
    is( $ad_group_non_guaranteed_settings->adOptimization, 'ad optimization', 'can get ad optimization' );
    is( $ad_group_non_guaranteed_settings->bidDescriptor, 'bid descriptor', 'can get bid descriptor' );

};



1;

