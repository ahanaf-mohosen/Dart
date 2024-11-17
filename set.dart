void main() {
  Set<int> numbers = {10, 20, 30, 40, 20};
  //duplicate values are not allowed in the set but it can be possible in list & map.
  print(numbers);

  List<int> marks = [55, 65, 65, 43, 45, 55, 67, 43, 45, 45, 76, 65, 54, 76];
  print(marks);
  final umarks = Set.of(marks);
  final newList = List.from(umarks);
  print(umarks);
  print(umarks.runtimeType);
  print(newList);
}
