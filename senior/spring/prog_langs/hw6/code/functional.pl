use strict;
use warnings;

my $first_class = sub {
  print "hello\n";
};

sub higher_order {
  my ($function) = @_;
  $function->();
  return $function;
}

my $should_print_hello = higher_order($first_class);
$should_print_hello->();
