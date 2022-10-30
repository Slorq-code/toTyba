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
          backgroundColor: const Color.fromRGBO(63, 63, 156, 1),
          title: Text("Your U is ${info.name}"),
          elevation: 0,
        ),
        body: Column(children: [
          SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _TarjetaImagen(info),
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

class _TarjetaImagen extends StatelessWidget {
  final Universidades info;

  const _TarjetaImagen(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Image(
          image: AssetImage('assets/no-image.png'),
        ),
      ),
    );
  }
}
