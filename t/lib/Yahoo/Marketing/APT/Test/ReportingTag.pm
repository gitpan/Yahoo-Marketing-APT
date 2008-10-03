package Yahoo::Marketing::APT::Test::ReportingTag;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::ReportingTag;

sub test_can_create_reporting_tag_and_set_all_fields : Test(7) {

    my $reporting_tag = Yahoo::Marketing::APT::ReportingTag->new
                                                      ->ID( 'id' )
                                                      ->accountID( 'account id' )
                                                      ->description( 'description' )
                                                      ->name( 'name' )
                                                      ->createTimestamp( '2009-01-06T17:51:55' )
                                                      ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $reporting_tag );

    is( $reporting_tag->ID, 'id', 'can get id' );
    is( $reporting_tag->accountID, 'account id', 'can get account id' );
    is( $reporting_tag->description, 'description', 'can get description' );
    is( $reporting_tag->name, 'name', 'can get name' );
    is( $reporting_tag->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $reporting_tag->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

