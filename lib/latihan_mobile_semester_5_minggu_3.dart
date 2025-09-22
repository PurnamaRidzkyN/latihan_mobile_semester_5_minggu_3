void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  // Konversi tinggi dari cm ke m
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = beratKg / (tinggiM * tinggiM);

  // Tentukan kategori menggunakan percabangan
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  // Simpan hasil ke riwayat
  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': double.parse(bmi.toStringAsFixed(2)), // Supaya tampilannya rapi
    'kategori': kategori
  });
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print("=== Riwayat Perhitungan BMI ===");
  for (var i = 0; i < riwayat.length; i++) {
    var data = riwayat[i];
    print(
      "${i + 1}. Tinggi: ${data['tinggi']} cm, Berat: ${data['berat']} kg, BMI: ${data['bmi']}, Kategori: ${data['kategori']}"
    );
  }
}