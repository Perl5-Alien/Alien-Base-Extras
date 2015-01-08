package Acme::Ford::Prefect;

use strict;
use warnings;

use Acme::Alien::DontPanic;

our $VERSION = '0.010';
$VERSION = eval $VERSION;

#use XSLoader;
#XSLoader::load;

require DynaLoader;
our @ISA = 'DynaLoader';
__PACKAGE__->bootstrap($VERSION);

1;

=head1 NAME

Acme::Ford::Prefect - Test Module for Alien::Base

=head1 SYNOPSIS

 use strict;
 use warnings;
 use Acme::Ford::Prefect;
 use Test::More tests => 1;

 is Acme::Ford::Prefect::answer(), 42;
 # if 42 is returned then Acme::Alien::DontPanic
 # properly provided the C library

=head1 DESCRIPTION

L<Alien::Base> comprises base classes to help in the construction of C<Alien::> modules. Modules in the L<Alien> namespace are used to locate and install (if necessary) external libraries needed by other Perl modules.

This module is a toy module to test the efficacy of the L<Alien::Base> system. This module depends on another toy module L<Acme::Alien::DontPanic>, which provides the needed the F<libdontpanic> library to be able to tell us the C<answer>.

=head1 SEE ALSO

=over 

=item * 

L<Alien::Base>

=item *

L<Alien>

=item *

L<Acme::Alien::DontPanic>

=back

=head1 SOURCE REPOSITORY

L<http://github.com/jberger/Alien-Base-Extras>

=head1 AUTHOR

Joel Berger, E<lt>joel.a.berger@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by Joel Berger

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

