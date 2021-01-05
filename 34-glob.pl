# Using the glob function to get the content of a directory.
# glob expects you to specify using wildcard chars about the files you are looking for.

use strict;
use warnings;

print "Enter a directory path along with files (wildcard): ";
my $path = <>;
chomp $path;

my @files = glob($path);
my $size = @files;
print "There are $size files\n";
print "$_\n" for @files;
