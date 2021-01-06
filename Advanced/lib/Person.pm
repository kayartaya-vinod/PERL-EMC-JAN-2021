use strict;
use warnings;

package Person;

sub new {
    # When used in Object oriented context,
    # the first parameter to this functio is always
    # the 'class'

    my ($class, $name, $email) = @_;

    # general practice is to keep all data in a hash
    # and make it part of the class (using bless)

    # there is no keyword like self or this in perl
    my $self = {
        NAME=>$name,
        EMAIL=>$email
    };

    # make $self as member variable of $class
    bless $self, $class;

    # when the control is returned back, it carries
    # class and member information
}

1;