// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tybaproject/screens/widgets/redirection.dart';
import '../../common/data/tratadata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool visualForm = false;

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<ModelMenu>(context).info;

    void _gridChange() {
      print(visualForm);
      setState(() {
        visualForm = !visualForm;
      });
      print("pensando cambio a grid $visualForm");
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('toTyba')),
        elevation: 10,
        backgroundColor: const Color.fromRGBO(90, 70, 178, 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _gridChange,
        tooltip: 'Change',
        child: visualForm
            ? const Icon(Icons.grid_on)
            : const Icon(Icons.view_column_sharp),
      ),
      body: visualForm ? InfoPreview(info) : InfoPreviewgrid(info),
    );
  }
}
