import 'package:tugas_4/tugas_4.dart' as tugas_4;
import 'dart:io';

double hitungTotalGaji(List<double> gajiPegawai) {
  double total = 0;
  for (var gaji in gajiPegawai) {
    total += gaji;
  }
  return total;
}

double tunjanganPegawai(String jabatan, [double tunjangan = 500000]) {
  if (jabatan.toLowerCase() == 'manager') {
    return tunjangan * 2;
  }
  return tunjangan;
}

double hitungBonus(int tahunKerja) {
  if (tahunKerja == 0) return 0;
  return 1000000 + hitungBonus(tahunKerja - 1);
}

double gajiBersih(double gaji, double pajak) => gaji - (gaji * pajak / 100);

void main() {
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);
  
  List<Map<String, dynamic>> pegawaiList = [];

  for (int i = 1; i <= jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai ke-$i: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Masukkan jabatan pegawai ke-$i: ");
    String jabatan = stdin.readLineSync()!;
    stdout.write("Masukkan gaji pegawai ke-$i: ");
    double gaji = double.parse(stdin.readLineSync()!);
    stdout.write("Masukkan lama tahun kerja pegawai ke-$i: ");
    int tahunKerja = int.parse(stdin.readLineSync()!);
    
    pegawaiList.add({
      'id': i,
      'nama': nama,
      'jabatan': jabatan,
      'gaji': gaji,
      'bonus': hitungBonus(tahunKerja),
      'tunjangan': tunjanganPegawai(jabatan),
      'gajiBersih': gajiBersih(gaji, 10),
    });
  }

  print("\nDaftar Pegawai:");
  for (var pegawai in pegawaiList) {
    print("ID: ${pegawai['id']}, Nama: ${pegawai['nama']}, Jabatan: ${pegawai['jabatan']}");
  }
  
  print("\nPegawai dengan ID Genap:");
  for (var pegawai in pegawaiList) {
    if (pegawai['id'] % 2 == 0) {
      print("${pegawai['nama']}");
    }
  }

  print("\nPegawai dengan ID Ganjil:");
  for (var pegawai in pegawaiList) {
    if (pegawai['id'] % 2 != 0) {
      print("${pegawai['nama']}");
    }
  }

  print("\nDetail Pegawai:");
  pegawaiList.forEach((pegawai) {
    print("Nama: ${pegawai['nama']}, Jabatan: ${pegawai['jabatan']}, Gaji: ${pegawai['gaji']}, Bonus: ${pegawai['bonus']}, Tunjangan: ${pegawai['tunjangan']}, Gaji Bersih: ${pegawai['gajiBersih']}");
  });

  // Menghitung total gaji
  List<double> gajiPegawai = pegawaiList.map((pegawai) => pegawai['gaji'] as double).toList();
  print("\nTotal gaji semua pegawai: ${hitungTotalGaji(gajiPegawai)}");
}

