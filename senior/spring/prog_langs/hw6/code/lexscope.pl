sub fcn1 {
  my $x = 1; # x1

  sub fcn2 {
    $x = 2;
  }

  sub fcn3 {
    my $x; # x2
    fcn2();
  }

  fcn3();
  print($x, "\n"); # prints "2\n"
}

fcn1();
