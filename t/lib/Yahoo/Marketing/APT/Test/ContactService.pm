package Yahoo::Marketing::APT::Test::ContactService;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997)

use strict; use warnings;

use base qw/ Yahoo::Marketing::APT::Test::PostTest /;
use Test::More;
use utf8;

use Yahoo::Marketing::APT::ContactService;
use Yahoo::Marketing::APT::Contact;
use Data::Dumper;

 use SOAP::Lite +trace => [qw/ debug method fault /];


sub SKIP_CLASS {
    my $self = shift;
    # 'not running post tests' is a true value
    return 'not running post tests' unless $self->run_post_tests;
    return;
}

sub startup_test_contact_service : Test(startup) {
    my ( $self ) = @_;

    $self->common_test_data( 'test_contact', $self->create_contact ) unless defined $self->common_test_data( 'test_contact' );
}


sub test_operate_contact : Test(1) {
    my $self = shift;

    my $ysm_ws = Yahoo::Marketing::APT::ContactService->new->parse_config( section => $self->section );

    ok(1);


}


1;
