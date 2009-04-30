package Yahoo::Marketing::APT::Test::SalesTeamMember;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::SalesTeamMember;

sub test_can_create_sales_team_member_and_set_all_fields : Test(5) {

    my $sales_team_member = Yahoo::Marketing::APT::SalesTeamMember->new
                                                             ->commissionPercentage( 'commission percentage' )
                                                             ->orderCreator( 'order creator' )
                                                             ->primary( 'primary' )
                                                             ->userID( 'user id' )
                   ;

    ok( $sales_team_member );

    is( $sales_team_member->commissionPercentage, 'commission percentage', 'can get commission percentage' );
    is( $sales_team_member->orderCreator, 'order creator', 'can get order creator' );
    is( $sales_team_member->primary, 'primary', 'can get primary' );
    is( $sales_team_member->userID, 'user id', 'can get user id' );

};



1;

