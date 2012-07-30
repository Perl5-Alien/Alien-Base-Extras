use strict;
use warnings;

use Test::More tests => 3;
use Acme::Alien::DontPanic;

use Text::ParseWords qw/shellwords/;

my @cflags = shellwords( Acme::Alien::DontPanic->cflags );
my @libs   = shellwords( Acme::Alien::DontPanic->libs );

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

