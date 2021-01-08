package Product;

use strict;
use warnings;

use overload q{""} => "toString";

# a new product is created using a hash with following fields:
# id, name, description, brand, category, quantity_per_unit, unit_price, picture, discount
sub new {
    my ($class, $data) = @_;
    bless $data, $class;
    return $data;
}

# add additional function related to a product object
# eg, converting an XML into a product, or vice versa, setters/getters

sub display {
    my $self = shift;
    print "ID                 : ", $self->{id}, "\n";
    print "Name               : ", $self->{name}, "\n";
    print "Description        : ", $self->{description}, "\n";
    print "Brand              : ", $self->{brand}, "\n";
    print "Category           : ", $self->{category}, "\n";
    print "Unit price         : ", $self->{unit_price}, "\n";
    print "Quantity per unit  : ", $self->{quantity_per_unit}, "\n";
    print "Discount           : ", $self->{discount}, "\n";
    print "Picture            : ", $self->{picture}, "\n";
}

sub toString {
    my $self = shift;
    return $self->{name};
}

sub toHash {
    my $self = shift;
    
}

1;

=note: create table command
create table products (
    id integer primary key,
    name varchar(50) not null,
    description varchar(255),
    brand varchar(50),
    category varchar(50),
    quantity_per_unit varchar(255),
    unit_price double,
    discount double,
    picture varchar(255)
);
=cut