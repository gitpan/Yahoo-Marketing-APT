package Yahoo::Marketing::APT::Test::TargetingAttributeValue;
# Copyright (c) 2008 Yahoo! Inc.  All rights reserved.  
# The copyrights to the contents of this file are licensed under the Perl Artistic License (ver. 15 Aug 1997) 

use strict; use warnings;

use base qw/Test::Class/;
use Test::More;

use Yahoo::Marketing::APT::TargetingAttributeValue;

sub test_can_create_targeting_attribute_value_and_set_all_fields : Test(7) {

    my $targeting_attribute_value = Yahoo::Marketing::APT::TargetingAttributeValue->new
                                                                             ->ID( 'id' )
                                                                             ->description( 'description' )
                                                                             ->name( 'name' )
                                                                             ->parentID( 'parent id' )
                                                                             ->type( 'type' )
                                                                             ->value( 'value' )
                   ;

    ok( $targeting_attribute_value );

    is( $targeting_attribute_value->ID, 'id', 'can get id' );
    is( $targeting_attribute_value->description, 'description', 'can get description' );
    is( $targeting_attribute_value->name, 'name', 'can get name' );
    is( $targeting_attribute_value->parentID, 'parent id', 'can get parent id' );
    is( $targeting_attribute_value->type, 'type', 'can get type' );
    is( $targeting_attribute_value->value, 'value', 'can get value' );

};



1;

