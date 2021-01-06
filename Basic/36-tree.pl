use strict;
use warnings;

# @ARGV is a global variable representing
# command line arguments.

# print "$_\n" for @ARGV
my $path = $ARGV[0];

unless (defined $path) {
    print "Enter path: ";
    $path = <>;
    chomp $path;
}

sub displayInfo {
    my ($path, $indent) = @_;
    die "PATH is required" unless defined $path;
    $indent = "" unless defined $indent;

    return if $path eq "." or $path eq "..";

    print $path, "\n";
    opendir DH, $path or die $1;
    
    foreach (readdir DH) {
        if (-d $_) {
            displayInfo ($_, $indent . "\t");
        }
        else {
            print $indent, " $_\n";
        }
    }
    close DH;
}

displayInfo $path