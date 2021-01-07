use strict;
use warnings;
use Socket;

=NOTE
To communicate with the server:
1. create a socket (representing the server) using the socket subroutine
2. connect to the server via the socket
3. read/write from/to the socket
=cut

my $server = "localhost";
my $port = 1234;

# 1. create socket
socket(SER_SOCKET, PF_INET, SOCK_STREAM, getprotobyname("tcp")) or die "Couldn't create socket! - $!";
print "Socket created!\n";

# 2. connect to server socket
connect(SER_SOCKET, pack_sockaddr_in($port, inet_aton($server))) or die "Couldn't connect to server - $!";
print "Connected to the server\n";

# 3. read information from the server socket
my $response = <SER_SOCKET>;
print "Response from server: $response\n";

# 3. or write to the server
# print SER_SOCKET "This is the client, saying hello";


close SER_SOCKET;