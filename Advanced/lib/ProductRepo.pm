package ProductRepo;
use strict;
use warnings;
use DBI;
use Product;

sub new {
    my $class = shift;

    my $connString = "DBI:SQLite:mydb.sqlite3"; # "DBI:mysql:mydb:localhost"
    my $username = ""; # "root"
    my $password = ""; # "topsecret"
    my $opts = {RaiseError=>1, AutoCommit=>1};

    my $dbh = DBI->connect($connString, $username, $password, $opts) or die "Could not connect - $!";

    bless {
        DBH=>$dbh
    }, $class;
}

# This class provides CRUD and QUERY opertions on a product object
# c->create-> addNewProduct

# my $repo = new ProductRepo();
# $repo->addNewProduct($pr1);
sub addNewProduct {
    my ($self, $pr) = @_;
    my $sql = "insert into products values (?,?,?,?,?,?,?,?,?)";
    my $sth = $self->{DBH}->prepare($sql);
    $sth->bind_param(1, $pr->{id});
    $sth->bind_param(2, $pr->{name});
    $sth->bind_param(3, $pr->{description});
    $sth->bind_param(4, $pr->{brand});
    $sth->bind_param(5, $pr->{category});
    $sth->bind_param(6, $pr->{quantity_per_unit});
    $sth->bind_param(7, $pr->{unit_price});
    $sth->bind_param(8, $pr->{discount});
    $sth->bind_param(9, $pr->{picture});
    $sth->execute();
}

# retrieve (R of CRUD)
sub findAll {
    my $self = shift;
    my $sql = "select * from products";
    my $sth = $self->{DBH}->prepare($sql);
    $sth->execute();
    my @products = ();
    while (my $p = $sth->fetchrow_hashref()) {
        my $pr = new Product($p);
        push @products, $pr;
    }
    @products;
}

1;