use strict;
use warnings;

use Test::More tests => 1;

use Acme::Ford::Prefect;

is( Acme::Ford::Prefect::answer(), 42, 'Ford Prefect knows the answer' );

