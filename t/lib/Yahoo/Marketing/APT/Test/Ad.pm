package Yahoo::Marketing::APT::Test::Ad;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::Ad;

sub test_can_create_ad_and_set_all_fields : Test(11) {

    my $ad = Yahoo::Marketing::APT::Ad->new
                                 ->ID( 'id' )
                                 ->accountID( 'account id' )
                                 ->adGroupID( 'ad group id' )
                                 ->adOptimizationWeight( 'ad optimization weight' )
                                 ->clickThroughURLSettings( 'click through urlsettings' )
                                 ->libraryAdID( 'library ad id' )
                                 ->status( 'status' )
                                 ->type( 'type' )
                                 ->createTimestamp( '2009-01-06T17:51:55' )
                                 ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $ad );

    is( $ad->ID, 'id', 'can get id' );
    is( $ad->accountID, 'account id', 'can get account id' );
    is( $ad->adGroupID, 'ad group id', 'can get ad group id' );
    is( $ad->adOptimizationWeight, 'ad optimization weight', 'can get ad optimization weight' );
    is( $ad->clickThroughURLSettings, 'click through urlsettings', 'can get click through urlsettings' );
    is( $ad->libraryAdID, 'library ad id', 'can get library ad id' );
    is( $ad->status, 'status', 'can get status' );
    is( $ad->type, 'type', 'can get type' );
    is( $ad->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $ad->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

