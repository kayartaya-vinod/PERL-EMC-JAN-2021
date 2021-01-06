use strict;
use warnings;

print "Enter a directory name: ";
my $path = <>;
chomp $path;

# the first parameter to the opendir function is
# a refence to a handle object. You can name it
# anything you want, and doesn't have to be in 
# uppercase. Usin this handle object, you can 
# access, read, close etc.
opendir DH, $path or die "could'nt open - $!";

# list all files with .pl extension
foreach (grep /\.pl$/, (readdir DH) ){
    print $_, "\n";
}

closedir DH;
