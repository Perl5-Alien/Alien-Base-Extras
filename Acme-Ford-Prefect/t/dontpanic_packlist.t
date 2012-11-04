use strict;
use warnings;

use Test::More;
use ExtUtils::Installed;
use File::Find;
use File::ShareDir qw/dist_dir/;

my $inst = ExtUtils::Installed->new;
my $packlist = $inst->packlist('Acme::Alien::DontPanic');
my $dir = dist_dir('Acme-Alien-DontPanic');

my $test = sub {
  my $file = $File::Find::name;
  ok( exists $packlist->{$file}, "$file exists in packlist" );
};

find $test, $dir;

done_testing;

