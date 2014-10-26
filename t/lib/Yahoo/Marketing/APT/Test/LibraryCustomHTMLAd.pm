package Yahoo::Marketing::APT::Test::LibraryCustomHTMLAd;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::LibraryCustomHTMLAd;

sub test_can_create_library_custom_htmlad_and_set_all_fields : Test(18) {

    my $library_custom_htmlad = Yahoo::Marketing::APT::LibraryCustomHTMLAd->new
                                                                     ->ID( 'id' )
                                                                     ->accountID( 'account id' )
                                                                     ->adFormat( 'ad format' )
                                                                     ->adSizeID( 'ad size id' )
                                                                     ->associatedToAdGroup( 'associated to ad group' )
                                                                     ->creativeIDs( 'creative ids' )
                                                                     ->editorialStatus( 'editorial status' )
                                                                     ->folderID( 'folder id' )
                                                                     ->height( 'height' )
                                                                     ->htmlTag( 'html tag' )
                                                                     ->impressionTrackingURL( 'impression tracking url' )
                                                                     ->name( 'name' )
                                                                     ->status( 'status' )
                                                                     ->type( 'type' )
                                                                     ->width( 'width' )
                                                                     ->createTimestamp( '2009-01-06T17:51:55' )
                                                                     ->lastUpdateTimestamp( '2009-01-07T17:51:55' )
                   ;

    ok( $library_custom_htmlad );

    is( $library_custom_htmlad->ID, 'id', 'can get id' );
    is( $library_custom_htmlad->accountID, 'account id', 'can get account id' );
    is( $library_custom_htmlad->adFormat, 'ad format', 'can get ad format' );
    is( $library_custom_htmlad->adSizeID, 'ad size id', 'can get ad size id' );
    is( $library_custom_htmlad->associatedToAdGroup, 'associated to ad group', 'can get associated to ad group' );
    is( $library_custom_htmlad->creativeIDs, 'creative ids', 'can get creative ids' );
    is( $library_custom_htmlad->editorialStatus, 'editorial status', 'can get editorial status' );
    is( $library_custom_htmlad->folderID, 'folder id', 'can get folder id' );
    is( $library_custom_htmlad->height, 'height', 'can get height' );
    is( $library_custom_htmlad->htmlTag, 'html tag', 'can get html tag' );
    is( $library_custom_htmlad->impressionTrackingURL, 'impression tracking url', 'can get impression tracking url' );
    is( $library_custom_htmlad->name, 'name', 'can get name' );
    is( $library_custom_htmlad->status, 'status', 'can get status' );
    is( $library_custom_htmlad->type, 'type', 'can get type' );
    is( $library_custom_htmlad->width, 'width', 'can get width' );
    is( $library_custom_htmlad->createTimestamp, '2009-01-06T17:51:55', 'can get 2009-01-06T17:51:55' );
    is( $library_custom_htmlad->lastUpdateTimestamp, '2009-01-07T17:51:55', 'can get 2009-01-07T17:51:55' );

};



1;

