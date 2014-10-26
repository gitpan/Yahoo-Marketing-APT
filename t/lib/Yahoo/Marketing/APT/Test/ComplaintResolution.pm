package Yahoo::Marketing::APT::Test::ComplaintResolution;
# Copyright (c) 2010 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::ComplaintResolution;

sub test_can_create_complaint_resolution_and_set_all_fields : Test(3) {

    my $complaint_resolution = Yahoo::Marketing::APT::ComplaintResolution->new
                                                                    ->resolution( 'resolution' )
                                                                    ->resolutionID( 'resolution id' )
                   ;

    ok( $complaint_resolution );

    is( $complaint_resolution->resolution, 'resolution', 'can get resolution' );
    is( $complaint_resolution->resolutionID, 'resolution id', 'can get resolution id' );

};



1;

