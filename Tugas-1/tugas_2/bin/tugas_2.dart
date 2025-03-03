import 'package:tugas_2/tugas_2.dart' as tugas_2;

void main() {
  List<String> mahasiswa = ['Egi', 'Nadia', 'Azza', 'Faqih', 'Aldy'];
  
  Set<String> mataKuliah = {'Matematika', 'Fisika', 'Kimia', 'Biologi'};
  
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    'Egi': {'NIM': '12345', 'Mata Kuliah': ['Matematika', 'Fisika']},
    'Nadia': {'NIM': '12346', 'Mata Kuliah': ['Kimia', 'Biologi']},
    'azza': {'NIM': '12347', 'Mata Kuliah': ['Matematika', 'Kimia']},
    'Faqih': {'NIM': '12348', 'Mata Kuliah': ['Fisika', 'Biologi']},
    'Aldy': {'NIM': '12349', 'Mata Kuliah': ['Matematika', 'Biologi']}
  };
  
  dataMahasiswa['Ido'] = {'NIM': '12350', 'Mata Kuliah': ['Kimia', 'Fisika']};
  
  dataMahasiswa.remove('Egi');
  mahasiswa.remove('Egi');

  print('Daftar Mahasiswa setelah perubahan:');
  dataMahasiswa.forEach((nama, data) {
    print('$nama: NIM = ${data['NIM']}, Mata Kuliah = ${data['Mata Kuliah']}');
  });
}
