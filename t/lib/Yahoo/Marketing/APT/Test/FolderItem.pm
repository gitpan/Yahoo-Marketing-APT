package Yahoo::Marketing::APT::Test::FolderItem;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::FolderItem;

sub test_can_create_folder_item_and_set_all_fields : Test(5) {

    my $folder_item = Yahoo::Marketing::APT::FolderItem->new
                                                  ->adType( 'ad type' )
                                                  ->creativeType( 'creative type' )
                                                  ->folderID( 'folder id' )
                                                  ->folderItemType( 'folder item type' )
                   ;

    ok( $folder_item );

    is( $folder_item->adType, 'ad type', 'can get ad type' );
    is( $folder_item->creativeType, 'creative type', 'can get creative type' );
    is( $folder_item->folderID, 'folder id', 'can get folder id' );
    is( $folder_item->folderItemType, 'folder item type', 'can get folder item type' );

};



1;

