class MyDatabase {

  // Static bisa di panggil tanpa membuat class objek nya lebih dahulu
  static String namaTersimpan = "Dans";
  static List<String> listNama = [
    "Jayoma",
    "Prakoso"
  ];

  // Variable non static harus membuat objek class terlebih dahulu untuk memanggilnya
  String namaKedua = "Jayoma";

}