# check if the input is a text file and if so, read the content
# and display the same.

use strict;
use warnings;

print "Enter a filename to read: ";
my $filename = <STDIN>;
chomp $filename;

if (-e $filename && -r _ && -T _) {
    open(FILE1, "<", $filename);
    while (<FILE1>) {
        print $_;
    }
    
    # print <FILE1>; # reads the entire file
    # my $line = <FILE1>; # reads one line from the file
    close FILE1;
}
else {
    die "File does not exist or not readable or not a text file!";
}

=file flags
    "<"     readonly mode
    ">"     creates the file (if not exists), overwrite if exists
    ">>"    creates the file if not exists, appends if exists
    "+<"    reads and writes, but does not create
    "+>"    creates the file if not exists, reads, overwrites
    "+>>"   creates (if not exists), reads, appends
=cut