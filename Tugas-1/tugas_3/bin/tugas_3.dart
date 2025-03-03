import 'package:tugas_3/tugas_3.dart' as tugas_3;
import 'dart:io';

void main() {
  stdout.write("Masukkan nama: ");
  String nama = stdin.readLineSync() ?? "";

  stdout.write("Masukkan nilai: ");
  int? nilai = int.tryParse(stdin.readLineSync() ?? "");

  if (nilai == null || nilai < 0 || nilai > 100) {
    print("Nilai harus antara 0 hingga 100.");
    return;
  }

  String kategoriSwitch;
  switch (nilai ~/ 10) {
    case 10:
    case 9:
      kategoriSwitch = "A";
      break;
    case 8:
      kategoriSwitch = "B";
      break;
    case 7:
      kategoriSwitch = "C";
      break;
    case 6:
      kategoriSwitch = "D";
      break;
    default:
      kategoriSwitch = "E";
  }

  print("\nNama: $nama");
  print("Nilai: $nilai");
  print("Kategori : $kategoriSwitch");
}