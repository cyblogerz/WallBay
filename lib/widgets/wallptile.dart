import 'package:flutter/material.dart';
import 'package:wallbay/screens/wallpaper_preview.dart';

class WallpTile extends StatelessWidget {
  const WallpTile(
      {Key? key, required this.url, required this.name, required this.id})
      : super(key: key);

  final String url;
  final String id;

  final String name;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          trailing: Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
          ),
          title: Text(name),
        ),
        child: GestureDetector(
          onTap: () => {
            Navigator.pushNamed(context, WallPreview.id, arguments: id),
          },
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
