sub gcd {
  my ($a, $b) = (@_);
  if ($b == 0) {
    return $a;
  }
  return gcd($b, $a % $b);
}

print gcd(8192, 384), "\n"; # should print 128
