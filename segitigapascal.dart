
import 'dart:io';

// Fungsi rekursif untuk menghitung nilai dalam Segitiga Pascal
int pascal(int row, int col) {
  if (col == 0 || col == row) {
    return 1;
  }
  return pascal(row - 1, col - 1) + pascal(row - 1, col);
}

// Fungsi untuk mencetak Segitiga Pascal dengan format rapi
void printPascal(int n) {
  for (int i = 0; i < n; i++) {
    // Tambahkan spasi di awal untuk membuat bentuk segitiga sempurna
    stdout.write(' ' * (n - i)); 
    
    for (int j = 0; j <= i; j++) {
      stdout.write('${pascal(i, j)} ');
    }
    print('');
  }
}

void main() {
  stdout.write('Masukkan jumlah baris: ');
  int? n = int.tryParse(stdin.readLineSync()!); // Input dari pengguna

  if (n == null || n <= 0) {
    print('Harap masukkan angka yang valid.');
  } else {
    printPascal(n);
  }
}
