import 'package:flutter/material.dart';

class WallpTile extends StatelessWidget {
  const WallpTile({Key? key, required this.url, required this.name})
      : super(key: key);

  final String url;
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
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
