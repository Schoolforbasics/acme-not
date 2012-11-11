#!perl -T

use Test::Most tests => 4;

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
