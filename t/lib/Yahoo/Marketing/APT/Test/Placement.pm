package Yahoo::Marketing::APT::Test::Placement;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::Placement;

sub test_can_create_placement_and_set_all_fields : Test(17) {

    my $placement = Yahoo::Marketing::APT::Placement->new
                                               ->ID( 'id' )
                                               ->accountID( 'account id' )
                                               ->adGroupID( 'ad group id' )
                                               ->comments( 'comments' )
                                               ->createTimestamp( '2009-01-06T17:51:55' )
                                               ->discounts( 'discounts' )
                                               ->endDate( '2009-01-07T17:51:55' )
                                               ->guaranteedSettings( 'guaranteed settings' )
                                               ->lastUpdateTimestamp( '2009-01-08T17:51:55' )
                                               ->nonGuaranteedSettings( 'non guaranteed settings' )
                                               ->revisedFromPlacementID( 'revised from placement id' )
                                               ->revisedToPlacementID( 'revised to placement id' )
                                               ->startDate( '2009-01-09T17:51:55' )
                                               ->status( 'status' )
                                               ->transferedFromPlacementID( 'transfered from placement id' )
                                               ->transferedToPlacementID( 'transfered to placement id' )
                   ;

    ok( $placement );

    is( $placement->ID, 'id', 'can get id' );
    is( $placement->accountID, 'account id', 'can get account id' );
    is( $placement->adGroupID, 'ad group id', 'can get ad group id' );
    is( $placement->comments, 'comments', 'can get comments' );
    is( $placement->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $placement->discounts, 'discounts', 'can get discounts' );
    is( $placement->endDate, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );
    is( $placement->guaranteedSettings, 'guaranteed settings', 'can get guaranteed settings' );
    is( $placement->lastUpdateTimestamp, '2009-01-08T17:51:55', 'can get 2009-01-08T17:51:55' );
    is( $placement->nonGuaranteedSettings, 'non guaranteed settings', 'can get non guaranteed settings' );
    is( $placement->revisedFromPlacementID, 'revised from placement id', 'can get revised from placement id' );
    is( $placement->revisedToPlacementID, 'revised to placement id', 'can get revised to placement id' );
    is( $placement->startDate, '2009-01-09T17:51:55', 'can get 2009-01-09T17:51:55' );
    is( $placement->status, 'status', 'can get status' );
    is( $placement->transferedFromPlacementID, 'transfered from placement id', 'can get transfered from placement id' );
    is( $placement->transferedToPlacementID, 'transfered to placement id', 'can get transfered to placement id' );

};



1;

