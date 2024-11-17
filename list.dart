void main() {
  List<int> list = [5, 6, 7, 8, 9, 10];
  print(list.length);
  print(list.isEmpty);
  list.add(11);
  print(list);
  list.removeLast();
  print(list);
  list.insert(5, 1);
  print(list);
  final margeList = list.join(" "); // here we can also use final keyword
  print(margeList);

  String name = "flutter";
  final sname = name.split("");
  print(sname);

  for (int l in list) {
    print(l);
  }
}
