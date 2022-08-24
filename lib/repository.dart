import 'package:note_unit_testing/MyDatabase.dart';

class Repository {

  String getName() {
    String name = MyDatabase.namaTersimpan;
    // Nilai name Dikembalikan ke tempat pemanggil
    return name;
  }

  List<String> getListName() {
    // Nilai name Dikembalikan ke tempat pemanggil
    return MyDatabase.listNama;
  }

}