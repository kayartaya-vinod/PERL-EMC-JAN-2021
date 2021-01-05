use strict;
use warnings;

print "Enter the file to convert to uppercase: ";
my $filename = <>;
chomp $filename;

die "File doesn't exist or not readable or not a text file." unless (-e $filename && -r _ && -T _);

my $newfilename = "$filename.upper";

open (f1, "<", $filename) or die $!;
open (f2, ">", $newfilename) or die $!;

while (<f1>) {
    print f2 "\U$_";
}

close f1;
close f2;

print "An uppercase version of $filename is stored in $newfilename\n";