use strict;
use warnings;

open HTML, "<hello.html" or die $!;

my @content = <HTML>;


foreach (@content) {
    print $_ if $_ =~ m-/-;
}
close HTML;