// void main() {
//   print("Open Connection.");
//   Future.delayed(const Duration(seconds: 5), () {
//     print("Complete Connection.");
//   });
//   print("Close Connection.");
// }

// void main() {
//   print("Downloading Songs...");
//   final songLink = downloadSong();
//   print(songLink); //Output Show: Instance of 'Future<String>'
// }

void main() async {
  print("Downloading Songs...");
  final songLink = await downloadSong();
  print(songLink);
}

Future<String> downloadSong() {
  return Future.delayed(const Duration(seconds: 5), () => "Linkin Park");
}
