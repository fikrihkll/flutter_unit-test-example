
import 'package:note_unit_testing/repository.dart';

class HomeBloc {

  // Objek Repository akan dibuat ketika Konstruktor HomeBloc di panggil
  Repository myRepository;

  String? name;
  List<String>? listName;

  HomeBloc(this.myRepository);

  String getName() {
    // Ambil data dari fungsi getName dalam objek Repository
    name = myRepository.getName();
    // Nilai name Dikembalikan ke tempat pemanggil
    return name!;
  }

  List<String> getListName() {
    listName = myRepository.getListName();

    if (name != null) {
      listName!.add(name!);
      return listName!;
    }
    return listName!;
  }

}