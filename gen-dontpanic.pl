#!/usr/bin/env perl

use strict;
use warnings;

use File::chdir;
use File::Copy qw/copy/;
use Archive::Tar;
use File::Find;

my $source = 'dontpanic';
my $dest = 'Acme-Alien-DontPanic/inc';
my $file = 'dontpanic-1.0.tar.gz';

{
  local $CWD = $source;
  system("sh autogen.sh") == 0 or die "Failed to autogen";
}

my @files;
find({ wanted => sub { push @files, $File::Find::name }, no_chdir => 1 }, $source );

print "Creating archive\n";
print "Adding: $_\n" for @files;

my $tar = Archive::Tar->new;
$tar->add_files(@files);
$tar->write( $file , COMPRESS_GZIP);

{
  local $CWD = $dest;
  unlink for <*.tar.gz>;
}

print "Copying archive\n";
copy $file, $dest or die "Couldn't copy";

print "Cleaning up\n";

{
  local $CWD = $source;
  system("sh autoclean.sh");
}

unlink for <*.tar.gz>;


