
import 'dart:async';
import '../../common/ui/sizes.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    /*logica persistecia de datos*/
    super.initState();
        Timer(const Duration(seconds: 4), () {
          Navigator.of(context).pushReplacementNamed('/home');
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Sizes.setSizes(width, height);

    return Scaffold(
      body: Center(
        child: Container(
          width: Sizes.width * 0.8,
          height: Sizes.width * 0.8,
          // margin: EdgeInsets.all(Sizes.padding),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/logo.png',
                  ),
                  fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
