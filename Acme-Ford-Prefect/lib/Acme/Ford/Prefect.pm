package Acme::Ford::Prefect;

use strict;
use warnings;

use Acme::Alien::DontPanic;

our $VERSION = '0.001';
$VERSION = eval $VERSION;

#use XSLoader;
#XSLoader::load;

require DynaLoader;
our @ISA = 'DynaLoader';
__PACKAGE__->bootstrap($VERSION);

1;

