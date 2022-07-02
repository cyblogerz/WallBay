import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/providers/imgmodel.dart';
import 'package:wallbay/screens/wallpaper_preview.dart';

class WallpTile extends StatelessWidget {
  const WallpTile({Key? key}) : super(key: key);

  // final String url;
  // final String id;

  // final String name;

  @override
  Widget build(BuildContext context) {
    final wallp = Provider.of<Bg>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          trailing: Consumer<Bg>(
            builder: (ctx, wallp, child) => IconButton(
              onPressed: (() => {
                    wallp.toggleFavourite(),
                  }),
              icon: Icon(
                  wallp.isfavourite ? Icons.favorite : Icons.favorite_border),
              color: Colors.pink,
            ),
          ),
          title: Text(wallp.name),
        ),
        child: GestureDetector(
          onTap: () => {
            Navigator.pushNamed(context, WallPreview.id,
                arguments: [wallp.id, wallp.isfavourite]),
          },
          child: Image.network(
            wallp.url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
