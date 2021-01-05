# get information about files using some builting flags

print "Enter a directory or filename: ";
$name = <>;
chomp $name;

if (-e $name) {
    # the first test against a file calls the stat() on
    # the file, and loads all the information and makes it
    # accessible with a global filehandle called _
    # So, the subsequent checks can be made against _
    print "$name exists.\n";
    if (-f _) {
        print "...and it is a file\n";
        print "readable\n" if (-r _);
        print "writeable\n" if (-w _);
        print "executable\n" if (-x _);
        print "non-zero file\n" if (-s _);
        print "zero size file\n" if (-z _);
        print "Binary file\n" if (-B _);
        print "Text file\n" if (-T _);
    }
    elsif (-d _) {
        print "...and it is a directory\n";
    }

}
else {
    print "$name is not a valid name of file or directory\n";
}

=file test flags
-e  check if file exists
-f  check if file is a plain file
-d  check if file is a directory
-r  does it have a read permission
-w  does it have a write permission
-x  does it have a execute permission
-s  check if it is a non-zero file
-B  check if the file is binary file
-T  check if the file is ASCII text file
=cut