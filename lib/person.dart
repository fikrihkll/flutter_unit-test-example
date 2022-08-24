import 'package:note_unit_testing/ambil_data.dart';

class Person {

  // TODO Encapsulation
  // SEmua atribbut yang ada di class
  // Harus dipanggil melalui fungsi jika dipanggil dari luar class
  String name;
  InterfaceAmbilData kelasAmbilData;

  Person(this.name, this.kelasAmbilData);

  String getName() {
    kelasAmbilData.ambilData("dataBaruwww...");
    return name;
  }

  String setName() {
    return name;
  }

}