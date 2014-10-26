package Yahoo::Marketing::APT::Test::AdGroupResponse;
# Copyright (c) 2010 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::AdGroupResponse;

sub test_can_create_ad_group_response_and_set_all_fields : Test(4) {

    my $ad_group_response = Yahoo::Marketing::APT::AdGroupResponse->new
                                                             ->adGroup( 'ad group' )
                                                             ->errors( 'errors' )
                                                             ->operationSucceeded( 'operation succeeded' )
                   ;

    ok( $ad_group_response );

    is( $ad_group_response->adGroup, 'ad group', 'can get ad group' );
    is( $ad_group_response->errors, 'errors', 'can get errors' );
    is( $ad_group_response->operationSucceeded, 'operation succeeded', 'can get operation succeeded' );

};



1;

