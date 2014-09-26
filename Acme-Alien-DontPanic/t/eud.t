use strict;
use warnings;
use Test::More;
BEGIN { plan skip_all => 'test requires blib' unless -d 'blib' }
use Acme::Alien::DontPanic::Install::Files;

my $config = Acme::Alien::DontPanic::Install::Files->Inline('C');

like $config->{LIBS}, qr{-ldontpanic}, 'libs okay';
like $config->{AUTO_INCLUDE}, qr{libdontpanic\.h}, 'auto include okay';

done_testing;
