# An anonymous hash can be created using curly braces

use strict;
use warnings;

my $dbconn = {
    HOST=>"192.168.1.23",
    PORT=>3305,
    PROTOCOL=>"mysql",
    USER=>"root",
    PASSWORD=>"Welcome#123"
};

print '$dbconn is ', $dbconn, "\n";

foreach my $key (keys %$dbconn) {
    # print "$key => ", $$dbconn{$key}, "\n";
    print "$key => ", $dbconn->{$key}, "\n";
}