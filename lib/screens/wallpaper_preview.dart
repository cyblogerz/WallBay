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
    return Stack(
      children: <Widget>[
        Image.network(
          image.url,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.red),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.info_outline)),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.file_download_outlined)),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.photo_rounded)),
                      IconButton(
                          onPressed: () => {}, icon: const Icon(Icons.favorite))
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
