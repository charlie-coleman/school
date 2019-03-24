my $x = 1;
if (($x == 1) || (++$x == 2)) {
  print $x, "\n"; # if it short circuits, it prints 1, else prints 2
}
