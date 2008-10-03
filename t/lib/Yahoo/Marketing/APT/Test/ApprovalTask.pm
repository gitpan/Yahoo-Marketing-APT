package Yahoo::Marketing::APT::Test::ApprovalTask;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::ApprovalTask;

sub test_can_create_approval_task_and_set_all_fields : Test(10) {

    my $approval_task = Yahoo::Marketing::APT::ApprovalTask->new
                                                      ->ID( 'id' )
                                                      ->accountID( 'account id' )
                                                      ->approvalID( 'approval id' )
                                                      ->assignedToUserID( 'assigned to user id' )
                                                      ->blockerApprovalTaskID( 'blocker approval task id' )
                                                      ->comment( 'comment' )
                                                      ->status( 'status' )
                                                      ->createTimestamp( '2009-01-06T17:51:55' )
                                                      ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $approval_task );

    is( $approval_task->ID, 'id', 'can get id' );
    is( $approval_task->accountID, 'account id', 'can get account id' );
    is( $approval_task->approvalID, 'approval id', 'can get approval id' );
    is( $approval_task->assignedToUserID, 'assigned to user id', 'can get assigned to user id' );
    is( $approval_task->blockerApprovalTaskID, 'blocker approval task id', 'can get blocker approval task id' );
    is( $approval_task->comment, 'comment', 'can get comment' );
    is( $approval_task->status, 'status', 'can get status' );
    is( $approval_task->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $approval_task->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

