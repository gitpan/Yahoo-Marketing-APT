package Yahoo::Marketing::APT::Test::TargetingProfileService;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997)

use strict; use warnings;

use base qw/ Yahoo::Marketing::APT::Test::PostTest /;
use Test::More;
use utf8;

use Yahoo::Marketing::APT::TargetingProfileService;
use Yahoo::Marketing::APT::TargetingProfile;
use Yahoo::Marketing::APT::TargetingProfileResponse;
use Yahoo::Marketing::APT::BasicResponse;
use Data::Dumper;

 use SOAP::Lite +trace => [qw/ debug method fault /];


sub SKIP_CLASS {
    my $self = shift;
    # 'not running post tests' is a true value
    return 'not running post tests' unless $self->run_post_tests;
    return;
}


sub test_operate_targeting_profile : Test(1) {
    my $self = shift;

    my $ysm_ws = Yahoo::Marketing::APT::TargetingProfileService->new->parse_config( section => $self->section );

    my @types = $ysm_ws->getSupportedTargetingAttributeTypes();
    ok( @types, 'can call getSupportedTargetingAttributeTypes');
}




1;
