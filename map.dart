void main() {
  // here we can use data as Object in the position of dynamic
  Map<String, dynamic> map = {
    'name': 'John',
    'age': 30,
    'address': {'city': 'New York', 'state': 'NY', 'country': 'USA'}
  };

  print("${map.keys} ${map["address"]}");

  dynamic addressMap = map["address"] as Map<String, Object>;
  print(addressMap.keys);
  print(addressMap.values);
}
