use strict;
use warnings;
use Exporter;
use DBI;

package vinpack::dbutils;

our @ISA = ('Exporter');
our @EXPORT = ('getDbh');

sub getDbh {
    my $connString = "DBI:SQLite:mydb.sqlite3"; # "DBI:mysql:mydb:localhost"
    my $username = ""; # "root"
    my $password = ""; # "topsecret"
    my $opts = {RaiseError=>1, AutoCommit=>1};

    DBI->connect($connString, $username, $password, $opts) or die "Could not connect - $!";
}