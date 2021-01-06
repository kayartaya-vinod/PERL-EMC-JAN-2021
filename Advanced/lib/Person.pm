use strict;
use warnings;

package Person;
use Data::Dumper;

use overload q{""} => "str";
use overload '.=' => "appendToName";

sub new {
    # When used in Object oriented context,
    # the first parameter to this functio is always
    # the 'class'

    my ($class, $name, $email) = @_;

    # general practice is to keep all data in a hash
    # and make it part of the class (using bless)

    # there is no keyword like self or this in perl
    my $self = {
        NAME    => $name,
        EMAIL   => $email
    };

    # make $self as member variable of $class
    bless $self, $class;

    # when the control is returned back, it carries
    # class and member information
    $self; # no need to return; blessed value will be automatically returned.
}


sub display {
    # if this method was invoked by $p1 
    # (like this: $p1->display()), then
    # the first argument is nothing but $p1 itself.
    # In other words, $self is same as $p1
    my ($self) = @_;
    print "Name    : ", $self->{NAME}, "\n";
    print "Email   : ", $self->{EMAIL}, "\n";
}

# achiving polymorphic behaviour
sub name {
    my ($self, $name) = @_;
    return $self->{NAME} unless defined $name;
    $self->{NAME} = $name;
}

sub str {
    my ($self) = @_;
    "Person (Name=$self->{NAME}, Email=$self->{EMAIL})";
}

sub appendToName{
    my ($self, $text) = @_;
    $self->{NAME} .= $text;
    $self;
}
1;