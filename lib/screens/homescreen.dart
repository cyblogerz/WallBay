import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/providers/bgdata.dart';
import 'package:wallbay/widgets/wallptile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    final imagesData = Provider.of<bgData>(context);
    final images = imagesData.images;
    return Scaffold(
      appBar: AppBar(
        title: Text("WallBay"),
      ),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (ctx, index) => WallpTile(url: images[index].url)),
    );
  }
}
