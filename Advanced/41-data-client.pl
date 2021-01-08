use strict;
use warnings;
use Socket;

use lib "/Users/vinod/Desktop/Data-Serializer-0.65/lib";
use Data::Serializer;
use Data::Dumper;

my $server = "localhost";
my $port = 1234;

socket(SER_SOCKET, PF_INET, SOCK_STREAM, getprotobyname("tcp")) or die "Couldn't create socket! - $!";
print "Socket created!\n";

connect(SER_SOCKET, pack_sockaddr_in($port, inet_aton($server))) or die "Couldn't connect to server - $!";
print "Connected to the server\n";

my $response = <SER_SOCKET>;
my $products = new Data::Serializer->new()->deserialize($response);
print Dumper $products;
# print $response, "\n";

close SER_SOCKET;