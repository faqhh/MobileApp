import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main() {
  Garasi garasi = Garasi();

  // Menambahkan kendaraan
  Mobil mobil1 = Mobil('Toyota', 'Camry', 2022, 4);
  Motor motor1 = Motor('Yamaha', 'R15', 2020, false);

  garasi.tambahKendaraan(mobil1);
  garasi.tambahKendaraan(motor1);

  // Menampilkan daftar kendaraan di garasi
  garasi.tampilkanSemuaKendaraan();

  // Melakukan servis kendaraan
  garasi.servisSemuaKendaraan();
}
