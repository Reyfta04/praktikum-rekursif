void generateCombinations(String current, int n, List<String> characters, List<String> results) {
  if (current.length == n) {
    results.add(current);
    return;
  }

  for (var char in characters) {
    generateCombinations(current + char, n, characters, results);
  }
}

void main() {
  int n = 3; // Jumlah karakter dalam kombinasi
  List<String> characters = ['a', 'b', 'c']; // Karakter yang digunakan
  List<String> results = [];

  generateCombinations('', n, characters, results);
  print(results.join(' '));
}
