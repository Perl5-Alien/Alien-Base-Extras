use strict;
use warnings;

use Alien::Base::ModuleBuild;

my $builder = Alien::Base::ModuleBuild->new(
  module_name => 'Alien::DontPanic',
  dist_abstract => 'Test Module for Alien::Base',
  license => 'perl',
  configure_requires => {
    'Alien::Base' => 0,
  },
  requires => {
    'perl' => '5.8.1',
    'Alien::Base' => 0,
  },
  dist_author => 'Joel A. Berger <joel.a.berger@gmail.com>',
  alien_name => 'dontpanic',
  alien_repository => {
    protocol => 'local',
    location => 'inc',
    pattern  => qr/^dontpanic-([\d\.]+)\.tar\.gz$/,
  },
);
$builder->create_build_script;

