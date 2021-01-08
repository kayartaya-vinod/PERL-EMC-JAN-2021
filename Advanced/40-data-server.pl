use strict;
use warnings;

use Socket;
use threads;

use Product;
use ProductRepo;

use Data::Serializer;

my $port = 1234;
my $proto = getprotobyname('tcp'); # 6
my $server = "localhost"; # 127.0.0.1

socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "Couldn't create a socket - $!";
print "Socket created!\n";

bind(SOCKET, pack_sockaddr_in($port, inet_aton($server))) or die "Couldn't bind the socket to port $port - $!";
print "Socket bound to $port port\n";

listen(SOCKET, 5) or die "Listen failed - $!";
print "Server is now listening on $server:$port\n";

my @products = (
    {ID=>1, NAME=>"Product 1", PRICE=>33.4},
    {ID=>2, NAME=>"Product 2", PRICE=>23.4}
);

my $products_ser = Data::Serializer->new()->serialize(\@products);
print $products_ser, "\n";

while (1) {
    print "Waiting for a client connection...\n";

    my $cl_sock;
    accept($cl_sock, SOCKET); # CL_SOCKET is a new socket handle created representing the client
    threads->create(sub{
        print "running the client task in a new thread\n";
        print $cl_sock $products_ser; # data being sent (written) to the client
        close $cl_sock;
    })->detach();
}
