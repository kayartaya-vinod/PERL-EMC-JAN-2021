use strict;
use warnings;

# A subroutine is a block of code that has a name,
# and using that name, you can invoke the block any number of times.

# prefix a block of code in curly braces with sub keyword

sub hello {
    print "Hello, there!\n";
}

# &hello(); --> older versions of Perl needed & prefix to call the function
hello; # hello();

my $name = "Vinod";
my $city = "Bangalore";

sub welcome {
    # $name and $city are global variables
    print "Hello $name, Welcome to $city!\n";
}

welcome;

sub greet {
    my $name = "Kumar";
    print "Hello, $name! Greetings!!!\n";
}

print "Before calling greet, In the main script, \$name is $name\n";
greet;
print "After calling greet, In the main script, \$name is $name\n";