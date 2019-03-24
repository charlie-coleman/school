use strict;

my $a = 15;
print $a, "\n"; # 15
$a = "hello there\n";
print $a; # hello there

my @b = ("this ", "is ", "an ", "array.\n");
print @b; # this is an array.
@b = (1, " two ", 3, " four ", 5, " VI ", 7, "\n");
print @b; # 1 two 3 four 5 VI 7

$a = @b;
print $a, "\n"; # 8
