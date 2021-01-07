use strict;
use warnings;

use Socket;
use threads;

=TO CREATE A SERVER
1. create a socket using the subroutine "socket"
2. bind the socket to a port (eg 1234) using the "bind" subroutine
3. listen to the socket at the given port using "listen" subroutine
4. wait for client requests using the "accept" subroutine
=cut

my $port = 1234;
my $proto = getprotobyname('tcp'); # 6
my $server = "localhost"; # 127.0.0.1

# 1. create a socket
# socket(SOCKET_HANDLE, DOMAIN, TYPE, PROTOCOL)
# SOCKET_HANDLE -> a new variable that can be reused
# DOMAIN -> PF_INET -> packet-format AF_INET -> address-format
# TYPE -> SOCK_STREAM -> TCP socket SOCK_DGRAM -> UDP socket
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "Couldn't create a socket - $!";

print "Socket created!\n";

# 2. bind the socket to a port number
bind(SOCKET, pack_sockaddr_in($port, inet_aton($server))) or die "Couldn't bind the socket to port $port - $!";
print "Socket bound to $port port\n";

# 3. listen on to the host:port combination
listen(SOCKET, 5) or die "Listen failed - $!";
print "Server is now listening on $server:$port\n";

# 4. wait for client requests

while (1) {
    print "Waiting for a client connection...\n";

    my $cl_sock;
    accept($cl_sock, SOCKET); # CL_SOCKET is a new socket handle created representing the client
    threads->create(sub{
        print "running the client task in a new thread\n";
        print $cl_sock "Hello, there!"; # data being sent (written) to the client
        # my $input = <$cl_sock>;
        # print "Message from client: $input\n";
        close $cl_sock;
    })->detach();
}

=NOTE

High level protocols:

ftp     - 21    - File Transfer Protocol
smtp    - 25    - Simple Mail Transfer Protocol (outgoing mail)
pop     - 109   - Post Office Protocol (incoming mail)
http    - 80    - Hyper Text Transfer Protocol

auth    - 113   - Authentication
echo    - 7     - Checks server to see if it's running
finger  - 79    - Let's you get information about a user
time    - 37    - Time server
telnet  - 23    - let's you connec to a server/machine and use remote server's terminal/command-prompt (putty)
ssh     - 22    

tcp     - 6
=cut