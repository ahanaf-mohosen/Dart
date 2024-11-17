void main() {
  const temp = 40;

  final result = switch (temp) {
    < 0 => "freeze",
    > 0 && < 15 => "cold",
    > 15 && <= 25 => "warm",
    > 26 && <= 48 => "hot",
    _ => "very hot"
  };
  print("The temperature is $result");
}
