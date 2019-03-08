  int num_names = 0;

%%

^[A-Z]    {num_names++; printf("yes");}
^[^A-Z]   {printf("no");}
.         {}

%%

int main() {
  yylex();
  printf("Total: %d names\n", num_names);
  return 0;
}
