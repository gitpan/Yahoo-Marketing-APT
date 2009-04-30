package Yahoo::Marketing::APT::Test::OrderCredit;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::OrderCredit;

sub test_can_create_order_credit_and_set_all_fields : Test(4) {

    my $order_credit = Yahoo::Marketing::APT::OrderCredit->new
                                                    ->amount( 'amount' )
                                                    ->date( 'date' )
                                                    ->orderID( 'order id' )
                   ;

    ok( $order_credit );

    is( $order_credit->amount, 'amount', 'can get amount' );
    is( $order_credit->date, 'date', 'can get date' );
    is( $order_credit->orderID, 'order id', 'can get order id' );

};



1;

