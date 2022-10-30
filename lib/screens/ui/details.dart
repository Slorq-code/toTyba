import 'package:flutter/material.dart';
import '../../common/data/modeldata.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.info}) : super(key: key);

  final Universidades info;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Your U is ${info.name}"),
          elevation: 0,
        ),
        body: Column(children: [
          SizedBox(
              width: double.infinity,
              height: size.height * 0.50,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _TarjetaDescription(info),
                    const Divider(),
                  ],
                ),
              ))
        ]));
  }
}

class _TarjetaDescription extends StatelessWidget {
  final Universidades info;

  const _TarjetaDescription(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        info.name,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}
