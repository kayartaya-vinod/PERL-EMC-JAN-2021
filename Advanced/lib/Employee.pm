use strict;
use warnings;

package Employee;
use Data::Dumper;

# our @ISA=qw(Person); # requires "use Person;"
use parent "Person";
use overload '+=' => 'incrementSalaryBy';

# override the constructor
sub new {
    my ($class, $id, $name, $email, $salary) = @_;
    # supply name and email to super class
    my $self = $class->SUPER::new($name, $email);
    # add additional members to $self
    $self->{ID} = $id;
    $self->{SALARY} = $salary;
    # no need to do bless again

    $self;
}

# override the display method
sub display {
    my ($self) = @_;
    print "Id      : ", $self->{ID}, "\n";
    $self->SUPER::display;
    print "Salary  : ₹", $self->{SALARY}, "\n";
}

sub incrementSalaryBy {
    my ($self, $amount) = @_;
    $self->{SALARY} += $amount;
    return $self;
}

sub str {
    my ($self) = @_;
    "Employee (Id=$self->{ID}, Salary=$self->{SALARY}, ". $self->SUPER::str ." )";
}

1;