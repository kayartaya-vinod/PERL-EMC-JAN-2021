use strict;
use warnings;

package Square;

use Data::Dumper;

# our @ISA = qw(Rectangle);
our @ISA = ("Rectangle");

# just by adding the above, members defined in Rectangle.pm are automatically included in this module (class) as well.

# Since square differs in few aspects to rectangle, we ma have override some of the inherited members like "new" and "display".

# overriding of constructor:
sub new {
    my ($class, $side) = @_;
    my $self = $class->SUPER::new($side, $side);
}

# override the "display" method/subroutine
sub display {
    my ($self) = @_;
    print "<< Square >>\n";
    print "Side       : ", $self->{WIDTH}, "\n";
}

# not any builtin function; no special effect;
sub str {
    my ($self) = @_;
    return "Square (Side=$self->{WIDTH})";
}