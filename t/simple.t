use strict;
use warnings;
use Test::More tests => 4;
use File::Listing::Ftpcopy;

do {
  my $line = '-rw-r--r-- 1 ollisg ollisg 788 Jan 24 17:37 Ftpcopy.xs';
  my $h = File::Listing::Ftpcopy::ftpparse($line);
  is $h->{name}, 'Ftpcopy.xs', 'name = Ftpcopy.xs';
  is $h->{size}, '788',        'size = 788';
};

do {
  my $line = 'SYSUAF.DAT;1            36/36         12-JUL-2012 09:17:04  [OLLISG]               (RWED,RWED,,)';
  my $h = File::Listing::Ftpcopy::ftpparse($line);
  is $h->{name}, 'SYSUAF.DAT', 'name = SYSUAF.DAT';
  is $h->{size}, 0,            'size = 0';
};