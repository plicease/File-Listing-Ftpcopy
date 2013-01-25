# stolen unabashedly from Gisle Aas' File::Listing
use Test;
plan tests => 4;

use File::Listing::Ftpcopy ('parse_dir');

$list = parse_dir(['02-05-96  10:48AM                 1415 src.slf','09-10-96  09:18AM       <DIR>          sl_util'], undef, 'dosftp');

ok @$list, 2;
ok $list->[0][0], "src.slf";
ok $list->[0][1], "f";
ok $list->[1][1], "d";
