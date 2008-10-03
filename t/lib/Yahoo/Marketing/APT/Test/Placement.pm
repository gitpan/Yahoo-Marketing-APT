package Yahoo::Marketing::APT::Test::Placement;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::Placement;

sub test_can_create_placement_and_set_all_fields : Test(11) {

    my $placement = Yahoo::Marketing::APT::Placement->new
                                               ->ID( 'id' )
                                               ->accountID( 'account id' )
                                               ->adGroupID( 'ad group id' )
                                               ->endDate( '2009-01-06T17:51:55' )
                                               ->guaranteedSettings( 'guaranteed settings' )
                                               ->nonGuaranteedSettings( 'non guaranteed settings' )
                                               ->startDate( '2009-01-07T17:51:55' )
                                               ->status( 'status' )
                                               ->createTimestamp( '2009-01-08T17:51:55' )
                                               ->lastUpdateTimestamp( '2009-01-09T17:51:55' )
                   ;

    ok( $placement );

    is( $placement->ID, 'id', 'can get id' );
    is( $placement->accountID, 'account id', 'can get account id' );
    is( $placement->adGroupID, 'ad group id', 'can get ad group id' );
    is( $placement->endDate, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $placement->guaranteedSettings, 'guaranteed settings', 'can get guaranteed settings' );
    is( $placement->nonGuaranteedSettings, 'non guaranteed settings', 'can get non guaranteed settings' );
    is( $placement->startDate, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );
    is( $placement->status, 'status', 'can get status' );
    is( $placement->createTimestamp, '2009-01-08T17:51:55', 'can get 2009-01-08T17:51:55' );
    is( $placement->lastUpdateTimestamp, '2009-01-09T17:51:55', 'can get 2009-01-09T17:51:55' );

};



1;
