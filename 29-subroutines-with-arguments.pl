# passing parameters/arguments to a subroutine (function) is same as 
# in most other languages via parenthesis.

use strict;
use warnings;

sub greet {
    my $name1 = $_[0];
    my $name = shift; # @_ is implied

    # parameters supplied while calling the function
    # are collected and accessible via a built in
    # my variable called @_ which is an array.
    # To get the first element, you can use the shift
    # function

    # since @_ is an array, you can also get the nth
    # element using $_[n] syntax

    print "Hello, $name\n";
    print "Hello, $name1\n";
}


# greet("Vinod");
# greet "Kumar";

sub multiplication_table {
    # my $num = shift; # size of @_ is reduced by 1
    # my $limit = shift; # size of @_ is reduced by 1

    # my $num = $_[0];
    # my $limit = $_[1];

    my ($num, $limit) = @_;
    die "Don't know what to do!" unless defined $num;
    $limit = 10 unless defined $limit;

    print "$num X $_ = ", $num*$_, "\n" for (1..$limit);
    print "-" x 20, "\n";
}

# multiplication_table 17, 10;
# multiplication_table 199, 5;
# multiplication_table 19, 5, 20, 30, 40;
# multiplication_table 15;
# multiplication_table;


sub factorial {
    my $num = shift;
    die "A number was expected" unless defined $num;

    my $f = 1;

    $f *= $_ for (1..$num);

    $f; # implcit return
}

# equivalent of try/catch of Java
eval {
    my $n = 10;
    my $fact = factorial $n;
    print "factorial of $n is $fact\n";
};
print $@, "\n" if $@;
# $@ represents the last error encountered
# it is a global variable, not bound a specific eval block.

print "End of script; Have a nice day!\n\n";