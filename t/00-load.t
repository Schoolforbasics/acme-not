#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Acme::Not' ) || print "Bail out!\n";
}

diag( "Testing Acme::Not $Acme::Not::VERSION, Perl $], $^X" );
