import 'package:tugas/tugas.dart' as tugas;

void main(List<String> arguments) {
  String namaProduk = "Laptop";
  int hargaSatuan = 8000000;
  int jumlahBeli = 2;

  int totalHarga = hargaSatuan * jumlahBeli;

  print("Nama Produk: $namaProduk");
  print("Harga Satuan: Rp$hargaSatuan");
  print("Jumlah Beli: $jumlahBeli");
  print("Total Harga: Rp$totalHarga");
}