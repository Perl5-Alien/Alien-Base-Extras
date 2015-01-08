use strict;
use warnings;

use Alien::Base::ModuleBuild;

my $builder = Alien::Base::ModuleBuild->new(
  module_name => 'Acme::Alien::DontPanic',
  license => 'perl',
  configure_requires => {
    'Alien::Base' => '0.006',
    'Module::Build' => 0.38,
  },
  test_requires => {
    'Test::More'         => 0,
    'ExtUtils::CBuilder' => 0,
    'Capture::Tiny'      => 0,
  },
  requires => {
    'perl' => '5.8.1',
    'Alien::Base' => '0.006',
  },
  dist_author => 'Joel A. Berger <joel.a.berger@gmail.com>',
  alien_name => 'dontpanic',
  alien_isolate_dynamic => 1,
  alien_repository => {
    protocol => 'local',
    location => 'inc',
    pattern  => qr/^dontpanic-([\d\.]+)\.tar\.gz$/,
  },
  alien_inline_auto_include => [ 'libdontpanic.h' ],
  meta_merge => {
    resources  => {
      repository => "http://github.com/Perl5-Alien/Alien-Base-Extras",
      bugtracker => "http://github.com/Perl5-Alien/Alien-Base-Extras/issues",
      x_MailingList => 'https://groups.google.com/forum/#!forum/perl5-alien',
    },
  },  
);

$builder->add_to_cleanup(
  'inc/dontpanic',
  't/static_link/*.o',
  't/static_link/main.so',
  't/static_link/main.dll',
  't/static_link/main.bundle',
);

$builder->create_build_script;

