import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallbay/providers/bgdata.dart';
import 'package:wallbay/screens/collections.dart';
import 'package:wallbay/widgets/wallgrid.dart';
import 'package:wallbay/widgets/wallptile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String id = '/';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _selectedIndex = 0;
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WallBay"),
          actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.search))],
        ),
        drawer: Drawer(),
        body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: [
              WallGrid(
                sId: false,
              ),
              CollectionsPage(),
              WallGrid(sId: true),
            ]),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.wallpaper),
              title: Text('Wallpapers'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.folder),
                title: Text('Collections'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Messages'),
                activeColor: Colors.pink),
          ],
        ));
  }
}
