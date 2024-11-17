void main() {
  Function f = () {
    // this is also called function reference without function name.
    print("I am anonymous");
  };
  f();
  f.call(); // same as above f(); function as work

  add(5, 10, () {
    print("Something");
  });

  sum(4, 9, () {
    print("Somethings");
  });
}

void add(int a, int b, Function f) {
  print("Sum: ${a + b}");
  f();
}

Function sum(int a, int b, Function f) {
  print("Sum: ${a + b}");
  f();
  return () {};
}
