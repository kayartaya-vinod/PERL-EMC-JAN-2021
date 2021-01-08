use strict;
use warnings;

use vinpack::dbutils qw(getDbh);

my $dbh = getDbh();

my $cmd = 'create table employees(
    id integer primary key autoincrement,
    name varchar(50) not null,
    salary double default 25000,
    dept varchar(50)
)';

$dbh->do("drop table if exists employee");
$dbh->do($cmd);
print "Table employees created successfully\n";
$dbh->disconnect();