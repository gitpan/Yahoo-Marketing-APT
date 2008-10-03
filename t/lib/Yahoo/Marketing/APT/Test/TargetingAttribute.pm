package Yahoo::Marketing::APT::Test::TargetingAttribute;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::TargetingAttribute;

sub test_can_create_targeting_attribute_and_set_all_fields : Test(7) {

    my $targeting_attribute = Yahoo::Marketing::APT::TargetingAttribute->new
                                                                  ->ID( 'id' )
                                                                  ->description( 'description' )
                                                                  ->name( 'name' )
                                                                  ->parentID( 'parent id' )
                                                                  ->type( 'type' )
                                                                  ->value( 'value' )
                   ;

    ok( $targeting_attribute );

    is( $targeting_attribute->ID, 'id', 'can get id' );
    is( $targeting_attribute->description, 'description', 'can get description' );
    is( $targeting_attribute->name, 'name', 'can get name' );
    is( $targeting_attribute->parentID, 'parent id', 'can get parent id' );
    is( $targeting_attribute->type, 'type', 'can get type' );
    is( $targeting_attribute->value, 'value', 'can get value' );

};



1;

