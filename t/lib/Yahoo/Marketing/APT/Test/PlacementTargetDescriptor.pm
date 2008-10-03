package Yahoo::Marketing::APT::Test::PlacementTargetDescriptor;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::PlacementTargetDescriptor;

sub test_can_create_placement_target_descriptor_and_set_all_fields : Test(3) {

    my $placement_target_descriptor = Yahoo::Marketing::APT::PlacementTargetDescriptor->new
                                                                                 ->targetID( 'target id' )
                                                                                 ->targetType( 'target type' )
                   ;

    ok( $placement_target_descriptor );

    is( $placement_target_descriptor->targetID, 'target id', 'can get target id' );
    is( $placement_target_descriptor->targetType, 'target type', 'can get target type' );

};



1;

