sub printHash {
    my (%h) = @_;
    return unless %h; # go back to the caller, if no parameter is recieved.

    print "{\n";
    print "    $_: $h{$_}\n" for (keys %h);
    print "}\n";
}

%data = (
    name=>Vinod,
    email=>'vinod@vinod.co'
);

%marks = (
    Maths => 99,
    Physics => 87,
    Electronics => 85
);

printHash %data;
printHash %marks;
printHash;