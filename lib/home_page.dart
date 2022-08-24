import 'package:flutter/material.dart';
import 'package:note_unit_testing/home_bloc.dart';
import 'package:note_unit_testing/repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late HomeBloc homeBloc;

  String name = "";
  List<String> listName = [];

  @override
  void initState() {
    super.initState();

    // Membuat objek Repository
    Repository myRepository = Repository();

    // Membuat objek HomeBloc lalu mengirim objek Repository melalui Konstruktor
    homeBloc = HomeBloc(myRepository);
    name = homeBloc.getName();
    listName = homeBloc.getListName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nama"),
              const SizedBox(height: 8,),
              Text(name),
              const SizedBox(height: 16,),
              Text("List Nama"),
              const SizedBox(height: 8,),
              Text(listName.toString())
            ],
          ),
        ),
      )
    );
  }


}
