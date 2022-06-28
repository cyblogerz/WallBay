import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/providers/bgdata.dart';

class WallPreview extends StatelessWidget {
  const WallPreview({Key? key}) : super(key: key);
  static const id = '/wallpaper-preview';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final images = Provider.of<bgData>(context).images;
    final image = images.firstWhere(
      (element) => element.id == id,
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.network(
            image.url,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
