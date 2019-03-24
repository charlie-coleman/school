sub f1 {
  print "f1\n";
  sub f2 {
    print "f2\n";
    sub f3 {
      print "f3\n";
    };
  };
}

f1();
f2();
f3();
