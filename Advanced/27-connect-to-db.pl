use strict;
use warnings;
use DBI;

my $connString = "DBI:SQLite:mydb.sqlite3"; # "DBI:mysql:mydb:localhost"
my $username = ""; # "root"
my $password = ""; # "topsecret"
my $opts = {RaiseError=>1, AutoCommit=>1};

DBI->connect($connString, $username, $password, $opts) or die "Could not connect - $!";
print "Connected to DB!\n";