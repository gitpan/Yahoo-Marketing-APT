package Yahoo::Marketing::APT::Test::OrderFee;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::OrderFee;

sub test_can_create_order_fee_and_set_all_fields : Test(5) {

    my $order_fee = Yahoo::Marketing::APT::OrderFee->new
                                              ->ID( 'id' )
                                              ->amount( 'amount' )
                                              ->orderID( 'order id' )
                                              ->type( 'type' )
                   ;

    ok( $order_fee );

    is( $order_fee->ID, 'id', 'can get id' );
    is( $order_fee->amount, 'amount', 'can get amount' );
    is( $order_fee->orderID, 'order id', 'can get order id' );
    is( $order_fee->type, 'type', 'can get type' );

};



1;

