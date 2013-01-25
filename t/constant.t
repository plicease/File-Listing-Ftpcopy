use strict;
use warnings;
use Test::More tests => 14;
use File::Listing::Ftpcopy qw( :all );

is FORMAT_UNKNOWN, 0, 'FORMAT_UNKNOWN';
is FORMAT_EPLF, 1, 'FORMAT_EPLF';
is FORMAT_MLSX, 2, 'FORMAT_MLSX';
is FORMAT_LS, 3, 'FORMAT_LS';

is ID_UNKNOWN, 0, 'ID_UNKNOWN';
is ID_FULL, 1, 'ID_FULL';

SKIP: {
  skip 'broken', 5;
  is MTIME_UNKNOWN, 0, 'MTIME_UNKNOWN';
  is MTIME_LOCAL, 0, 'MTIME_LOCAL';
  is MTIME_REMOTEMINUTE, 0, 'MTIME_REMOTEMINUTE';
  is MTIME_REMOTEDAY, 0, 'MTIME_REMOTEDAY';
  is MTIME_REMOTESECOND, 0, 'MTIME_REMOTESECOND';
};

is SIZE_UNKNOWN, 0, 'SIZE_UNKNOWN';
is SIZE_BINARY, 1, 'SIZE_BINARY';
is SIZE_ASCII, 2, 'SIZE_ASCII';
