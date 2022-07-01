import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/widgets/wallptile.dart';

import '../providers/bgdata.dart';

class WallGrid extends StatelessWidget {
  const WallGrid({Key? key, required this.sId}) : super(key: key);
  final bool sId;

  @override
  Widget build(BuildContext context) {
    final imagesData = Provider.of<bgData>(context);
    final images = imagesData.images;
    final favs = images.where((element) => element.isfavourite).toList();
    return GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: sId ? favs.length : images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
              value: sId ? favs[index] : images[index],
              child: WallpTile(
                  // url: images[index].url,
                  // name: images[index].name,
                  // id: images[index].id,
                  ),
            ));
  }
}
