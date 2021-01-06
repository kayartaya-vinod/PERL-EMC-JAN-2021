use strict;
use warnings;

package Rectangle;
use Data::Dumper;

# "str" is bound to the operator that converts object to string
use overload q{""} => "toString";

# The constructor name can be anything; it's just another regular subroutine. General convesion is to use the name "new" for the same.
sub new {
    my ($class, $width, $height) = @_;

    my $self = {
        WIDTH=> $width || 0,
        HEIGHT=> $height || 0
    };
    bless $self, $class;
}

sub display {
    my ($self) = @_;
    print "<< Rectangle >>\n";
    print "Width      : ", $self->{WIDTH}, "\n";
    print "Height     : ", $self->{HEIGHT}, "\n";
}

sub perimeter {
    my ($self) = @_;
    return 2 * ($self->{WIDTH} + $self->{HEIGHT});
}

# not any builtin function; no special effect;
sub toString {
    my ($self) = @_;
    return "Rectangle (Width=$self->{WIDTH}, Height=$self->{HEIGHT})";
}

return 1;