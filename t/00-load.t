#!perl -T

use Test::Most tests => 7;

BEGIN {
    use_ok( 'Acme::Not' ) || print "Bail out!\n";
}

diag( "Testing Acme::Not $Acme::Not::VERSION, Perl $], $^X" );

# check methods
{
    can_ok('Acme::Not', qw(is_acme_not));
    can_ok('Acme::Not', qw(
        is_imperfect 
        is_the_lowest_point 
        is_the_lowest_stage 
        is_the_lowest_point_or_stage 
        is_one_that_represents_imperfection_of_the_thing_expressed
        is_not_the_bizzity_bomb
        is_not_teh_shiznit
        is_not_leon_brocard
    ));
}

# check instantiation
{
    my $an = new_ok( 'Acme::Not' );
}

# check a subclass is not acme
{
    my $san = new_ok( 'Subclass::Acme::Not' );
    ok( ! $san->isa('Acme') );
    ok( $san->is_acme_not );
}

package Subclass::Acme::Not;
use base 'Acme::Not';
