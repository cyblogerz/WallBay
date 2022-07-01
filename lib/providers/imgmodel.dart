import 'package:flutter/cupertino.dart';

class Bg with ChangeNotifier {
  final String url;
  final String category;
  final String id;
  final String name;
  bool isfavourite;

  Bg({
    required this.category,
    required this.id,
    required this.name,
    required this.url,
    this.isfavourite = false,
  });

  void toggleFavourite() {
    isfavourite = !isfavourite;
    notifyListeners();
  }
}
