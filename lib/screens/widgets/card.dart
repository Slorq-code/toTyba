import 'package:flutter/material.dart';
import '../../common/data/modeldata.dart';
import '../ui/details.dart';



class InfoPreview extends StatelessWidget {
  final List<Universidades>? info;
  const InfoPreview(this.info, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info?.length,
      itemBuilder: (BuildContext context, int index) {
        return _GatitoCard(
          info: info![index],
          index: index,
        );
      },
    );
  }
}
class _GatitoCard extends StatelessWidget {
  final Universidades info;
  final int index;
  const _GatitoCard({required this.info, required this.index});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(
                      info: info,
                    )));
      },
      child: Column(
        children: <Widget>[
          _TarjetaImagen(info),
          _TarjetaTitulo(info),
          const SizedBox(height: 10),
        ],
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


class _TarjetaTitulo extends StatelessWidget {
  final Universidades info;

  const _TarjetaTitulo(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(info.name,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}