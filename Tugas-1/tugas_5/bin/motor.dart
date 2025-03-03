import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool adaKeranjang;

  Motor(String merk, String model, int tahun, this.adaKeranjang)
      : super(merk, model, tahun);

  @override
  void tampilkanInfo() {
    print('- Motor: $merk $model ($tahun) - ${adaKeranjang ? "Dengan Keranjang" : "Tanpa Keranjang"}');
  }

  @override
  void servis() {
    print('Servis motor $merk $model dilakukan.');
  }
}
