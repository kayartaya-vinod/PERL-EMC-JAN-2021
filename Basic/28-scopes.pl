$num = 1;

sub incr {
    # my has a narrow (selfish) scope
    # local has a wider scope (need to call function using & prefix)
    local $num = 5;
    $num++;
    print "before calling incrBy10, num is $num\n";
    # line below uses $num of this function
    &incrBy10; # code has access to local variables (and not my variables) of this function
    print "after calling incrBy10, num is $num\n";
}

sub incrBy10 {
    $num += 10;
}

print "before calling incr, num is $num\n";
incr;
print "after calling incr, num is $num\n";
&incrBy10; # uses $num of the main script
print "after calling incrBy10, num is $num\n";