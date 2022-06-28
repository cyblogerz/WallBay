import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/widgets/wallptile.dart';

import '../providers/bgdata.dart';

class WallGrid extends StatelessWidget {
  const WallGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagesData = Provider.of<bgData>(context);
    final images = imagesData.images;
    return GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) => WallpTile(
              url: images[index].url,
              name: images[index].name,
              id: images[index].id,
            ));
  }
}
