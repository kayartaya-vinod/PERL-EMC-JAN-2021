use strict;
use warnings;
use vinpack::dbutils qw(getDbh);
use vinpack::utils qw(line);
use Data::Dumper;

my ($sql, $dbh, $sth, @row, $row_ref, $row_hashref);

$sql = "select * from employees";
$dbh = getDbh();
$sth = $dbh->prepare($sql);
$sth->execute();

@row = $sth->fetchrow_array();
print Dumper \@row;
$row_ref = $sth->fetchrow_arrayref();
print Dumper $row_ref;
$row_hashref = $sth->fetchrow_hashref();
print Dumper $row_hashref;

line;

@row = $dbh->selectrow_array($sql);
print Dumper \@row;
$row_ref = $dbh->selectrow_arrayref($sql);
print Dumper $row_ref;
$row_hashref = $dbh->selectrow_hashref($sql);
print Dumper $row_hashref;

$dbh->disconnect();