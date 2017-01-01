#!/usr/bin/perl -w
#
# returningarray
#
# Author: Tamara Temple <tamara@tamaratemple.com>
# Created: 2012/04/04
# Time-stamp: <2012-04-04 23:01:36 tamara>
# Copyright (c) 2012 Tamara Temple Web Development
# License: GPLv3
#

use strict;

sub my_function {
    my $n = shift; # get the first paramter
    my @a = (); # initialize the array
    for (my $i = 0; $i < $n; $i++) {
        push @a, $i; # pushes the current value of $i to the array @a
    }
    print "in my_function: ".join(", ",@a)."\n";
    return @a;
}

my @my_a = my_function(10);
print "in main: ".join(", ",@my_a)."\n";

sub my_other_function {
    my $first = 'first';
    my $second = 'second';
    return ($first, $second);
}

my ($f,$s) = my_other_function();
print "in main: \$f=$f, \$s=$s\n";

