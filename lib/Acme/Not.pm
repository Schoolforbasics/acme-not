package Acme::Not;

use 5.006001;
use Spiffy -Base;
our $VERSION = '0.000001';
our @EXPORT = qw(acme_not);

sub acme_not() { Acme::Not->new(@_) }

package UNIVERSAL;
no warnings 'once';

sub is_acme_not { !$self->isa('Acme') }

*is_imperfect = \&is_acme_not;
*is_the_lowest_point = \&is_acme_not;
*is_the_lowest_stage = \&is_acme_not;
*is_the_lowest_point_or_stage = \&is_acme_not;
*is_one_that_represents_imperfection_of_the_thing_expressed = \&is_acme_not;
*is_not_the_bizzity_bomb = \&is_acme_not;
*is_not_teh_shiznit = \&is_acme_not;
*is_not_leon_brocard = \&is_acme_not;

__DATA__
=for comment

=head1 NAME

Acme::Not - The Base of Imperfection

=head1 VERSION

Version 0.000001

=cut

our $VERSION = '0.000001';

=head1 SYNOPSIS

Acme::Not should confirm that your module is not a subclass of Acme.

=head1 AUTHOR

Schmooster, C<< <schmooster \AT gmail.com> >>

=head1 BUGS

Please do not report any bugs.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::Not

=head1 ACKNOWLEDGEMENTS

This is _completely_ templated on Acme: http://search.cpan.org/dist/Acme/

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2012 Schmooster.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Acme::Not
