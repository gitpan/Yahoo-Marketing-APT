package Yahoo::Marketing::APT::Test::VideoCreativeResponse;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::VideoCreativeResponse;

sub test_can_create_video_creative_response_and_set_all_fields : Test(4) {

    my $video_creative_response = Yahoo::Marketing::APT::VideoCreativeResponse->new
                                                                         ->errors( 'errors' )
                                                                         ->operationSucceeded( 'operation succeeded' )
                                                                         ->videoCreative( 'video creative' )
                   ;

    ok( $video_creative_response );

    is( $video_creative_response->errors, 'errors', 'can get errors' );
    is( $video_creative_response->operationSucceeded, 'operation succeeded', 'can get operation succeeded' );
    is( $video_creative_response->videoCreative, 'video creative', 'can get video creative' );

};



1;

