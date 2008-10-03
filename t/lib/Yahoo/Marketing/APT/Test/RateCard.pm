package Yahoo::Marketing::Test::RateCard;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997)

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::RateCard;

sub test_can_create_rate_card_and_set_all_fields : Test(6) {

    my $site = Yahoo::Marketing::APT::RateCard->new
	                                      ->ID( 'id' )
                                              ->name( 'name' )
                                              ->siteID( 'site id' )
                                              ->startDate( '2009-01-06T17:51:55' )
                                              ->status( 'status' )
					      ;

    ok( $site );

    is( $site->ID, 'id', 'can get ID' );
    is( $site->name, 'name', 'can get name' );
    is( $site->siteID, 'site id', 'can get site id' );
    is( $site->startDate, '2009-01-06T17:51:55', 'can get start date' );
    is( $site->status, 'status', 'can get status' );

};



1;

