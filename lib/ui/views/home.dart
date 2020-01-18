import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _pageController = PageController(keepPage: true);
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.grey[800],
        color: [
          Colors.blue[700],
          Colors.blue[800],
          Colors.blue[900],
          Colors.blue[800],
          Colors.blue[700],
        ][_currentIndex],
        height: 60.0,
        animationCurve: Curves.easeOutCubic,
        items: <Widget>[
          Icon(Icons.book, size: 35, color: Colors.white),
          Icon(Icons.explore, size: 35, color: Colors.white),
          Icon(Icons.search, size: 35, color: Colors.white),
          Icon(Icons.view_list, size: 35, color: Colors.white),
          Icon(Icons.settings, size: 35, color: Colors.white),
        ],
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
          });
        },
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _pageController,
        children: <Widget>[
          Center(
            child: Text(
              "Local Library screen",
              textScaleFactor: 2.0,
            ),
          ),
          Center(
            child: Text(
              "Explore screen",
              textScaleFactor: 2.0,
            ),
          ),
          Center(
            child: Text(
              "Search screen",
              textScaleFactor: 2.0,
            ),
          ),
          Center(
            child: Text(
              "Genres screen",
              textScaleFactor: 2.0,
            ),
          ),
          Center(
            child: Text(
              "Settings screen",
              textScaleFactor: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
