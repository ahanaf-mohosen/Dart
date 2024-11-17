void main() {
  final result = add(5);
  print(result);

  final carea = calculateArea(width: 5.0, height: 7.0);
  print(carea);
  final r = calculateArea(height: 5);
  print(r);

  final area = calculateArea(height: 5.5, width: 4.0);
  print(area);

  final sumResult = sum(a: 5, b: 10);
  print(sumResult);
}

//positional optional
int add(int a, [int b = 0]) => a + b;
/* 
but if i want to try to "a" optional but 
"b" not then the system will show an error, it's mean,
add([int a = 0], int b) that show error. On the other hand 
if we want then we can make both positional optional.
add([int a = 0], [int b = 0]) 
*/

//named optional
double calculateArea({double height = 1.0, double width = 1.0}) =>
    height * width;

//named required
int sum({required int a, required int b}) => a + b;
