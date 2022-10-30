import 'package:flutter/material.dart';
import '../../common/data/modeldata.dart';
import '../ui/details.dart';

class InfoPreviewgrid extends StatefulWidget {
  final List<Universidades>? info;
  const InfoPreviewgrid(this.info, {super.key});

  @override
  State<InfoPreviewgrid> createState() => _InfoPreviewgridState();
}

class _InfoPreviewgridState extends State<InfoPreviewgrid> {
  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Wrap(
          runSpacing: 2,
          alignment: WrapAlignment.spaceBetween,
          direction: Axis.horizontal,
          children:
              widget.info!.map((info) => _Card(info: info, index: 1)).toList()),
    );
  }
}

class _Card extends StatelessWidget {
  final Universidades info;
  final int index;
  const _Card({required this.info, required this.index});
  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return SizedBox(
      width: sizeScreen.width * 0.5,
      height: sizeScreen.height * 0.3,
      child: MaterialButton(
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
      child: Text(
        info.name,
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
      ),
    );
  }
}
