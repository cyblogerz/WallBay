import 'package:flutter/material.dart';

class WallpTile extends StatelessWidget {
  const WallpTile({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
