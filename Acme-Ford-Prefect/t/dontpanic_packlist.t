use strict;
use warnings;

use Test::More;
use ExtUtils::Installed;
use File::Find;
use File::ShareDir qw/dist_dir/;
use Acme::Alien::DontPanic;

plan skip_all => 'only for share install'
  if Acme::Alien::DontPanic->install_type eq 'system';

my $inst = ExtUtils::Installed->new;
my $packlist = eval { $inst->packlist('Acme::Alien::DontPanic') };

unless ( defined $packlist ) {
  plan skip_all => 'Packlist test not valid when Acme::Alien::DontPanic is not fully installed'; 
}

my $dir = dist_dir('Acme-Alien-DontPanic');

my $test = sub {
  my $file = $File::Find::name;
  ok( exists $packlist->{$file}, "$file exists in packlist" );
};

find $test, $dir;

done_testing;

