use strict;
use warnings;

use vinpack::utils qw(line);
use Try::Tiny;

sub showFile {
    my $filename = shift; # pops the first element from @_

    die 'Filename is mandatory' unless defined $filename;

    open FILE, "<", $filename or die "Couldn't open file - $!";
    print <FILE>;
    close FILE;
}

sub main{
    print "Enter a filename: ";
    my $fname = <>;
    chomp $fname;

    line;
=eval
    eval {
        showFile $fname;
    };
    # actual error is captured in a global variable called $@
    print $@, "\n" if $@;

    line;
=cut

    try {
        showFile $fname;
    }
    catch {
        print $_, "\n";
    };

    print "That's all folks. Have a nice day!\n\n";
}

main;