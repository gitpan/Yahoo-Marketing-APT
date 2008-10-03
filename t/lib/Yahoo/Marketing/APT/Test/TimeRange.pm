package Yahoo::Marketing::APT::Test::TimeRange;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::TimeRange;

sub test_can_create_time_range_and_set_all_fields : Test(3) {

    my $time_range = Yahoo::Marketing::APT::TimeRange->new
                                                ->endTime( 'end time' )
                                                ->startTime( 'start time' )
                   ;

    ok( $time_range );

    is( $time_range->endTime, 'end time', 'can get end time' );
    is( $time_range->startTime, 'start time', 'can get start time' );

};



1;

