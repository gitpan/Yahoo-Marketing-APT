package Yahoo::Marketing::APT::Test::ClickThroughURLSettings;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::ClickThroughURLSettings;

sub test_can_create_click_through_urlsettings_and_set_all_fields : Test(3) {

    my $click_through_urlsettings = Yahoo::Marketing::APT::ClickThroughURLSettings->new
                                                                             ->flashAdClickThroughURLs( 'flash ad click through urls' )
                                                                             ->imageAdClickThroughURL( 'image ad click through url' )
                   ;

    ok( $click_through_urlsettings );

    is( $click_through_urlsettings->flashAdClickThroughURLs, 'flash ad click through urls', 'can get flash ad click through urls' );
    is( $click_through_urlsettings->imageAdClickThroughURL, 'image ad click through url', 'can get image ad click through url' );

};



1;

