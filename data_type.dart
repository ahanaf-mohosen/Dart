void main() {
  int age = 20;
  age = 10;
  print(age);
  print(age.isEven);

  double pi = 3.1416;
  pi = 3.14;
  print(pi);

  num zip = 1344;
  zip = 65535.5;
  print(zip);

  String name = "Mugdho";
  name = "Mohosen";
  print("My name is ${name}");

  bool isMarried = false;
  isMarried = true;
  print(isMarried);

  var variable = 5;
  variable = 7;
  print(variable);
  print(variable.runtimeType);

  dynamic v = "car";
  v = 10;
  print(v);
  print(v.runtimeType);
}
