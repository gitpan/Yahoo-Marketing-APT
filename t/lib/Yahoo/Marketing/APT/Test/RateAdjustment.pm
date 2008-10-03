package Yahoo::Marketing::Test::RateAdjustment;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997)

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::RateAdjustment;

sub test_can_create_rate_adjustment_and_set_all_fields : Test(10) {

    my $rate_adjustment = Yahoo::Marketing::APT::RateAdjustment->new
                                          ->endDate( '2009-02-06T17:51:55' )
                                          ->floorCPM( 'floor cpm' )
                                          ->ID( 'id' )
                                          ->listCPM( 'list cpm' )
                                          ->percentageMarkup( 'percentage markup' )
                                          ->rateCardID( 'rate card id' )
                                          ->startDate( '2009-01-06T17:51:55' )
                                          ->targetCPM( 'target cpm' )
                                          ->targetingAttributeDescriptors( 'targeting attribute descriptors' )
                                          ;

    ok( $rate_adjustment );

    is( $rate_adjustment->endDate, '2009-02-06T17:51:55', 'can get end date' );
    is( $rate_adjustment->floorCPM, 'floor cpm', 'can get floor cpm' );
    is( $rate_adjustment->ID, 'id', 'can get ID' );
    is( $rate_adjustment->listCPM, 'list cpm', 'can get list cpm' );
    is( $rate_adjustment->percentageMarkup, 'percentage markup', 'can get percentage markup' );
    is( $rate_adjustment->rateCardID, 'rate card id', 'can get rate card id' );
    is( $rate_adjustment->startDate, '2009-01-06T17:51:55', 'can get start date' );
    is( $rate_adjustment->targetCPM, 'target cpm', 'can get target cpm' );
    is( $rate_adjustment->targetingAttributeDescriptors, 'targeting attribute descriptors', 'can get targeting attribute descriptors' );

};



1;

