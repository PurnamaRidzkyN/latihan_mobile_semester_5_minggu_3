import 'package:latihan_mobile_semester_5_minggu_3/latihan_mobile_semester_5_minggu_3.dart';

void main() {
  // List untuk menyimpan riwayat perhitungan
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi beberapa input
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  // Tampilkan riwayat menggunakan perulangan
  tampilkanRiwayat(riwayat);
}