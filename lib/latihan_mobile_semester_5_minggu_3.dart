void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print("=== Riwayat Perhitungan BMI ===");
  for (var i = 0; i < riwayat.length; i++) {
    var data = riwayat[i];
    print(
      "${i + 1}. Tinggi: ${data['tinggi']} cm, Berat: ${data['berat']} kg, BMI: ${data['bmi']}, Kategori: ${data['kategori']}"
    );
  }
}