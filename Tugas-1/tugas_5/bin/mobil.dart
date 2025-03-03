import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int jumlahPintu;

  Mobil(String merk, String model, int tahun, this.jumlahPintu)
      : super(merk, model, tahun);

  @override
  void tampilkanInfo() {
    print('- Mobil: $merk $model ($tahun) - $jumlahPintu Pintu');
  }

  @override
  void servis() {
    print('Servis mobil $merk $model dilakukan.');
  }
}
