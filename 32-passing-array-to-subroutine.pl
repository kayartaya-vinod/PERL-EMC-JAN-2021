sub printAray {
    # my (@ar) = @_;
    # return unless @ar;
    return unless @_;

    print "[\n";
    print "    $_,\n" for (@_);
    print "]\n";
}

my @names = qw(Vinod Shyam Hyder Ramesh);
my @nums = (1..5);

printAray @names;
printAray @nums;
printAray;