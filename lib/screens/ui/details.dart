import 'package:flutter/material.dart';
import '../../common/data/modeldata.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.info}) : super(key: key);
  final Universidades info;

  void _addPhoto() {
    print("Hola desde details");
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Your U ${info.name}"),
          backgroundColor: const Color.fromRGBO(90, 70, 178, 1),
          elevation: 10,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(90, 70, 178, 1),
            onPressed: _addPhoto,
            elevation: 10,
            tooltip: 'Change',
            child: const Icon(Icons.add_a_photo_outlined)),
        body: Column(children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.5,
            child: _TarjetaImagen(info),
          ),
          SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _TarjetaDescription(info),
                  ],
                ),
              ))
        ]));
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

class _TarjetaDescription extends StatelessWidget {
  final info;
  const _TarjetaDescription(this.info);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Text(
            info.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const Divider(),
          const Text(
            "Lorem ipsum dolor sit amet. Et perspiciatis ipsam et quidem odit et quia molestiae non rerum placeat. Ex maiores tempora est quod galisum At velit quaerat quo omnis perferendis? Sed nulla tempore rem deleniti consequatur sit vero obcaecati et veniam dolorem ut quibusdam rerum vel internos asperiores est rerum illum. Sit consequuntur omnis ab galisum esse ut asperiores voluptas et nisi ullam ex beatae blanditiis et fuga facere At nesciunt dicta.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
