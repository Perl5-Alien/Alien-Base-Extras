use strict;
use warnings;

use Test::More tests => 3;

use Acme::Ford::Prefect;

is( Acme::Ford::Prefect::answer(), 42, 'Ford Prefect knows the answer' );

ok( exists( $Acme::Alien::DontPanic::AlienLoaded{-ldontpanic} ), 'AlienLoaded hash populated' );
ok( -e $Acme::Alien::DontPanic::AlienLoaded{-ldontpanic}, 'AlienLoaded hash points to existant file' );

