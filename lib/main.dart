import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/providers/bgdata.dart';
import 'package:wallbay/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => bgData()),
        child: MaterialApp(
          routes: {
            Home.id: (context) => const Home(),
          },
          initialRoute: Home.id,
        ));
  }
}
