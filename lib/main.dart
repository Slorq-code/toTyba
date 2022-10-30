import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tybaproject/screens/ui/home.dart';
import 'package:tybaproject/screens/ui/splash.dart';

import 'common/data/tratadata.dart';
import 'screens/theme/theme.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        
      providers: [
        ChangeNotifierProvider(create: (_)=> ModelMenu(), lazy: false),
      ],
      child: MaterialApp(
          title: 'AppAndres',
          debugShowCheckedModeBanner: false,
          theme: miTema,
          initialRoute: "/",
          routes: {
            '/': (context) => const SplashPage(),
            '/home': (context) => const HomeScreen(),
          }),
    );
  }
}
