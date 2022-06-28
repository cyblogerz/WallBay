import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/providers/bgdata.dart';
import 'package:wallbay/screens/homescreen.dart';
import 'package:wallbay/screens/wallpaper_preview.dart';

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
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData.dark(),
          routes: {
            Home.id: (context) => const Home(),
            WallPreview.id: (ctx) => const WallPreview(),
          },
          initialRoute: Home.id,
        ));
  }
}
