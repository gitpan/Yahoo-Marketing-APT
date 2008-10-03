package Yahoo::Marketing::APT::Test::OrderDiscount;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::OrderDiscount;

sub test_can_create_order_discount_and_set_all_fields : Test(4) {

    my $order_discount = Yahoo::Marketing::APT::OrderDiscount->new
                                                        ->discount( 'discount' )
                                                        ->format( 'format' )
                                                        ->type( 'type' )
                   ;

    ok( $order_discount );

    is( $order_discount->discount, 'discount', 'can get discount' );
    is( $order_discount->format, 'format', 'can get format' );
    is( $order_discount->type, 'type', 'can get type' );

};



1;

