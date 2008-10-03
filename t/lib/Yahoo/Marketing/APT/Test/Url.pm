package Yahoo::Marketing::APT::Test::Url;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::Url;

sub test_can_create_url_and_set_all_fields : Test(7) {

    my $url = Yahoo::Marketing::APT::Url->new
                                   ->ID( 'id' )
                                   ->accountID( 'account id' )
                                   ->editorialStatus( 'editorial status' )
                                   ->url( 'url' )
                                   ->createTimestamp( '2009-01-06T17:51:55' )
                                   ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $url );

    is( $url->ID, 'id', 'can get id' );
    is( $url->accountID, 'account id', 'can get account id' );
    is( $url->editorialStatus, 'editorial status', 'can get editorial status' );
    is( $url->url, 'url', 'can get url' );
    is( $url->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $url->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

