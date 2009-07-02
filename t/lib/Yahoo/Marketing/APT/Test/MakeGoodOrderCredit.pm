package Yahoo::Marketing::APT::Test::MakeGoodOrderCredit;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::MakeGoodOrderCredit;

sub test_can_create_make_good_order_credit_and_set_all_fields : Test(4) {

    my $make_good_order_credit = Yahoo::Marketing::APT::MakeGoodOrderCredit->new
                                                                      ->amount( 'amount' )
                                                                      ->date( 'date' )
                                                                      ->orderID( 'order id' )
                   ;

    ok( $make_good_order_credit );

    is( $make_good_order_credit->amount, 'amount', 'can get amount' );
    is( $make_good_order_credit->date, 'date', 'can get date' );
    is( $make_good_order_credit->orderID, 'order id', 'can get order id' );

};



1;

