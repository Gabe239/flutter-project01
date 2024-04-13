import 'package:flutter/material.dart';
import 'package:test2/routes/app_routes.dart'; // Import your AppRoutes

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Colors.grey[900], // Set bottom navigation bar background color
        selectedItemColor: Colors.white, // Set selected item color
        unselectedItemColor: Colors.grey, // Set unselected item color
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icons/home.png',
              width: 24, // Set width of the image
              height: 24, // Set height of the image
              color: _selectedTab == 0 ? Colors.white : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icons/search.png',
              width: 24,
              height: 24,
              color: _selectedTab == 0 ? Colors.white : Colors.grey,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icons/library.png',
              width: 24,
              height: 24,
              color: _selectedTab == 0 ? Colors.white : Colors.grey,
            ),
            label: "Your Library",
          ),
        ],
      ),
      body: Stack(
        children: [
          _buildTabScreen(0, 'Home'), // HomeScreen
          _buildTabScreen(1, 'Search'), // SearchScreen
          _buildTabScreen(2, 'Library'), // LibraryScreen
        ],
      ),
    );
  }

  Widget _buildTabScreen(int tabIndex, String routeName) {
    return Offstage(
      offstage: _selectedTab != tabIndex,
      child: Container(
        color: Colors.black, // Set main screen background color to black
        child: Navigator(
          key: GlobalKey(),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => AppRoutes.routes[routeName]!(context),
            );
          },
        ),
      ),
    );
  }
}
