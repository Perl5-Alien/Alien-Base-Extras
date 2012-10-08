use strict;
use warnings;

use Test::More tests => 3;
require Acme::Alien::DontPanic;
my $alien = Acme::Alien::DontPanic->new;

use Text::ParseWords qw/shellwords/;

my @cflags = shellwords( $alien->cflags );
my @libs   = shellwords( $alien->libs );

my ($libdir) = grep { s/^-L// } @libs;
ok( -d $libdir, '-L path exists' );

my ($libname) = grep { s/^-l// } @libs;
is( $libname, 'dontpanic', 'idenitified needed library' );

my @files = do {
  opendir( my $dh, $libdir );
  readdir $dh;
};

my $files_found = grep { /$libname/ } @files;

ok( $files_found, 'found lib' );

#This test isn't sufficient, see also Acme::Ford::Prefect

