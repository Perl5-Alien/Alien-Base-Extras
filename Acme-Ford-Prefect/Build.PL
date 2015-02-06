use strict;
use warnings;

use Module::Build;
use Acme::Alien::DontPanic;

my $dontpanic = Acme::Alien::DontPanic->new;

my $cflags = $dontpanic->cflags;
my $libs   = $dontpanic->libs;

my $builder = Module::Build->new(
    module_name       => 'Acme::Ford::Prefect',
    dist_abstract     => 'Part of the test framework for Alien::Base',
    dist_author       => [
      'Graham Ollis <plicease@cpan.org>',
      'Joel Berger <joel.a.berger@gmail.com>',
    ],
    license           => 'perl',
    requires          => {
      'perl' => '5.008001',
    },
    configure_requires => {
      'Module::Build' => 0.38,
      'Acme::Alien::DontPanic' => 0.011,
    },
    test_requires => {
      'Test::More'    => 0,
    },
    build_requires    => {
      'ExtUtils::CBuilder' => 0,
    },
    requires => {
      'Acme::Alien::DontPanic' => 0.011,
    },
    extra_compiler_flags => $cflags,
    extra_linker_flags   => $libs, 
    meta_merge => {
      resources  => {
        repository => "http://github.com/Perl5-Alien/Alien-Base-Extras",
        bugtracker => "http://github.com/Perl5-Alien/Alien-Base-Extras/issues",
        x_MailingList => 'https://groups.google.com/forum/#!forum/perl5-alien',
      },
    },  
);

$builder->create_build_script;

