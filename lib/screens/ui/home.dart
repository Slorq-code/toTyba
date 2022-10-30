import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../common/data/tratadata.dart';
import '../widgets/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<ModelMenu>(context).info;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:  const Center(
            child: Text('toTyba')
          ),
          elevation: 10,
          // actions: [
          //   IconButton(
          //       icon: const Icon(Icons.search_outlined),
          //       onPressed: () => showSearch(
          //             context: context,
          //             delegate: CatSearchDelegate(),
          //           )),
          // ],
        ),
        body: InfoPreview(info));
  }
}
