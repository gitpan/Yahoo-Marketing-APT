package Yahoo::Marketing::APT::Test::BillingTermsValue;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::BillingTermsValue;

sub test_can_create_billing_terms_value_and_set_all_fields : Test(3) {

    my $billing_terms_value = Yahoo::Marketing::APT::BillingTermsValue->new
                                                                 ->ID( 'id' )
                                                                 ->name( 'name' )
                   ;

    ok( $billing_terms_value );

    is( $billing_terms_value->ID, 'id', 'can get id' );
    is( $billing_terms_value->name, 'name', 'can get name' );

};



1;

