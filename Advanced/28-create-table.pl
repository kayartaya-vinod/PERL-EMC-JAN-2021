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

$cmd = '
create table products (
    id integer primary key,
    name varchar(50) not null,
    description varchar(255),
    brand varchar(50),
    category varchar(50),
    quantity_per_unit varchar(255),
    unit_price double,
    discount double,
    picture varchar(255)
)
';
# $dbh->do("drop table if exists employee");
$dbh->do($cmd);
print "Table employees created successfully\n";
$dbh->disconnect();