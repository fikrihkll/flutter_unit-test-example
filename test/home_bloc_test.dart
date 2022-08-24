import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:note_unit_testing/home_bloc.dart';
import 'package:note_unit_testing/repository.dart';

class FakeRepository extends Mock implements Repository {}

void main() {

  late FakeRepository repository;
  late HomeBloc homeBloc;

  // Buat FakeClass 1 layer di atas class yang ingin ditest
  // Buat objek dari class yang ingin di test
  setUp(() {
     repository = FakeRepository();
     homeBloc = HomeBloc(repository);
  });

  test("DIBERIKAN nama budi KETIKA homeBloc.getName dipanggil HARUS mengembalikan nama budi", () {
    // DIBERIKAN
    when(()=> repository.getName()).thenAnswer((invocation) => "budi");

    // KETIKA MELAKUKAN SESUATU
    var result = homeBloc.getName();

    // HARUS
    expect(result, "budi");
  });

  test("DIBERIKAN list nama joyo dan koto KETIKA homeBloc.getListName dipanggil HARUS mengembalikan nama joyo dan koto", () {
    // DIBERIKAN
    when(()=> repository.getListName()).thenAnswer((invocation) => ["joyo", "koto"]);
    when(()=> repository.getName()).thenAnswer((invocation) => "budi");

    // KETIKA MELAKUKAN SESUATU
    var resultName = homeBloc.getName();
    var result = homeBloc.getListName();

    // HARUS
    expect(result, ["joyo", "koto", "budi"]);
    expect(result, isNot(["joyo", "koto"]));
    verify(()=> homeBloc.getListName());
    verify(()=> homeBloc.getName());
  });
}