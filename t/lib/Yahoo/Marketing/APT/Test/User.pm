package Yahoo::Marketing::APT::Test::User;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::User;

sub test_can_create_user_and_set_all_fields : Test(17) {

    my $user = Yahoo::Marketing::APT::User->new
                                     ->ID( 'id' )
                                     ->email( 'email' )
                                     ->fax( 'fax' )
                                     ->firstName( 'first name' )
                                     ->firstNameFurigana( 'first name furigana' )
                                     ->homePhone( 'home phone' )
                                     ->lastName( 'last name' )
                                     ->lastNameFurigana( 'last name furigana' )
                                     ->middleInitial( 'middle initial' )
                                     ->mobilePhone( 'mobile phone' )
                                     ->status( 'status' )
                                     ->title( 'title' )
                                     ->userName( 'user name' )
                                     ->workPhone( 'work phone' )
                                     ->createTimestamp( '2009-01-06T17:51:55' )
                                     ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $user );

    is( $user->ID, 'id', 'can get id' );
    is( $user->email, 'email', 'can get email' );
    is( $user->fax, 'fax', 'can get fax' );
    is( $user->firstName, 'first name', 'can get first name' );
    is( $user->firstNameFurigana, 'first name furigana', 'can get first name furigana' );
    is( $user->homePhone, 'home phone', 'can get home phone' );
    is( $user->lastName, 'last name', 'can get last name' );
    is( $user->lastNameFurigana, 'last name furigana', 'can get last name furigana' );
    is( $user->middleInitial, 'middle initial', 'can get middle initial' );
    is( $user->mobilePhone, 'mobile phone', 'can get mobile phone' );
    is( $user->status, 'status', 'can get status' );
    is( $user->title, 'title', 'can get title' );
    is( $user->userName, 'user name', 'can get user name' );
    is( $user->workPhone, 'work phone', 'can get work phone' );
    is( $user->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $user->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

