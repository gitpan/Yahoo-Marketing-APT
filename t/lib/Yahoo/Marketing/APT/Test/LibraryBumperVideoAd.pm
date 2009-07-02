package Yahoo::Marketing::APT::Test::LibraryBumperVideoAd;
# Copyright (c) 2009 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::LibraryBumperVideoAd;

sub test_can_create_library_bumper_video_ad_and_set_all_fields : Test(21) {

    my $library_bumper_video_ad = Yahoo::Marketing::APT::LibraryBumperVideoAd->new
                                                                        ->ID( 'id' )
                                                                        ->accountID( 'account id' )
                                                                        ->adFormat( 'ad format' )
                                                                        ->associatedToAdGroup( 'associated to ad group' )
                                                                        ->compositeClickThroughURL( 'composite click through url' )
                                                                        ->createTimestamp( '2009-01-06T17:51:55' )
                                                                        ->duration( 'duration' )
                                                                        ->editorialStatus( 'editorial status' )
                                                                        ->folderID( 'folder id' )
                                                                        ->impressionTrackingURLs( 'impression tracking urls' )
                                                                        ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                                                                        ->name( 'name' )
                                                                        ->playback0Beacons( 'playback0 beacons' )
                                                                        ->playback100Beacons( 'playback100 beacons' )
                                                                        ->playback25Beacons( 'playback25 beacons' )
                                                                        ->playback50Beacons( 'playback50 beacons' )
                                                                        ->playback75Beacons( 'playback75 beacons' )
                                                                        ->status( 'status' )
                                                                        ->type( 'type' )
                                                                        ->videoCreativeID( 'video creative id' )
                   ;

    ok( $library_bumper_video_ad );

    is( $library_bumper_video_ad->ID, 'id', 'can get id' );
    is( $library_bumper_video_ad->accountID, 'account id', 'can get account id' );
    is( $library_bumper_video_ad->adFormat, 'ad format', 'can get ad format' );
    is( $library_bumper_video_ad->associatedToAdGroup, 'associated to ad group', 'can get associated to ad group' );
    is( $library_bumper_video_ad->compositeClickThroughURL, 'composite click through url', 'can get composite click through url' );
    is( $library_bumper_video_ad->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $library_bumper_video_ad->duration, 'duration', 'can get duration' );
    is( $library_bumper_video_ad->editorialStatus, 'editorial status', 'can get editorial status' );
    is( $library_bumper_video_ad->folderID, 'folder id', 'can get folder id' );
    is( $library_bumper_video_ad->impressionTrackingURLs, 'impression tracking urls', 'can get impression tracking urls' );
    is( $library_bumper_video_ad->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );
    is( $library_bumper_video_ad->name, 'name', 'can get name' );
    is( $library_bumper_video_ad->playback0Beacons, 'playback0 beacons', 'can get playback0 beacons' );
    is( $library_bumper_video_ad->playback100Beacons, 'playback100 beacons', 'can get playback100 beacons' );
    is( $library_bumper_video_ad->playback25Beacons, 'playback25 beacons', 'can get playback25 beacons' );
    is( $library_bumper_video_ad->playback50Beacons, 'playback50 beacons', 'can get playback50 beacons' );
    is( $library_bumper_video_ad->playback75Beacons, 'playback75 beacons', 'can get playback75 beacons' );
    is( $library_bumper_video_ad->status, 'status', 'can get status' );
    is( $library_bumper_video_ad->type, 'type', 'can get type' );
    is( $library_bumper_video_ad->videoCreativeID, 'video creative id', 'can get video creative id' );

};



1;
