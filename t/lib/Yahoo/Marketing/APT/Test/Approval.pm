package Yahoo::Marketing::APT::Test::Approval;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::Approval;

sub test_can_create_approval_and_set_all_fields : Test(10) {

    my $approval = Yahoo::Marketing::APT::Approval->new
                                             ->ID( 'id' )
                                             ->approvalDetails( 'approval details' )
                                             ->approvalObject( 'approval object' )
                                             ->approvalWorkflowID( 'approval workflow id' )
                                             ->comments( 'comments' )
                                             ->status( 'status' )
                                             ->toBeCompletedDate( '2009-01-06T17:51:55' )
                                             ->createTimestamp( '2009-01-07T17:51:55' )
                                             ->lastUpdateTimestamp( '2009-01-08T17:51:55' )
                   ;

    ok( $approval );

    is( $approval->ID, 'id', 'can get id' );
    is( $approval->approvalDetails, 'approval details', 'can get approval details' );
    is( $approval->approvalObject, 'approval object', 'can get approval object' );
    is( $approval->approvalWorkflowID, 'approval workflow id', 'can get approval workflow id' );
    is( $approval->comments, 'comments', 'can get comments' );
    is( $approval->status, 'status', 'can get status' );
    is( $approval->toBeCompletedDate, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $approval->createTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );
    is( $approval->lastUpdateTimestamp, '2009-01-08T17:51:55', 'can get 2009-01-08T17:51:55' );

};



1;

