import 'package:flutter/cupertino.dart';

import '../models/imgmodel.dart';

class bgData with ChangeNotifier {
  List<Bg> _images = [
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
    Bg(
        category: "nature",
        id: 1,
        name: "mystery-island-dinosaur-skull",
        url:
            "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg"),
  ];

  List<Bg> get images {
    return [..._images];
  }

  void addItems() {
    // _images.add(value);
    notifyListeners();
  }
}
