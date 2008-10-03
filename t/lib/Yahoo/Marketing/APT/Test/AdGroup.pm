package Yahoo::Marketing::APT::Test::AdGroup;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::AdGroup;

sub test_can_create_ad_group_and_set_all_fields : Test(10) {

    my $ad_group = Yahoo::Marketing::APT::AdGroup->new
                                            ->ID( 'id' )
                                            ->accountID( 'account id' )
                                            ->buyType( 'buy type' )
                                            ->name( 'name' )
                                            ->nonGuaranteedSettings( 'non guaranteed settings' )
                                            ->orderID( 'order id' )
                                            ->status( 'status' )
                                            ->createTimestamp( '2009-01-06T17:51:55' )
                                            ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $ad_group );

    is( $ad_group->ID, 'id', 'can get id' );
    is( $ad_group->accountID, 'account id', 'can get account id' );
    is( $ad_group->buyType, 'buy type', 'can get buy type' );
    is( $ad_group->name, 'name', 'can get name' );
    is( $ad_group->nonGuaranteedSettings, 'non guaranteed settings', 'can get non guaranteed settings' );
    is( $ad_group->orderID, 'order id', 'can get order id' );
    is( $ad_group->status, 'status', 'can get status' );
    is( $ad_group->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $ad_group->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

