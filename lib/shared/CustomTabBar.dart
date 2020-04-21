import 'package:flutter/material.dart';
import 'package:lydia/screens/home/home.dart';
import 'package:lydia/screens/settings/settings.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff1B6DAC),
      child: Column(children: [
        SizedBox(
          height: 35,
        ),
        Container(
          //This is responsible for the background of the tabbar, does the magic
          decoration: BoxDecoration(
              //This is for background color
              color: Colors.white.withOpacity(0.0),
              //This is for bottom border that is needed
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.8))),
          child: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
            isScrollable: true,
            indicatorPadding: EdgeInsets.zero,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            indicatorColor: Colors.white,
            controller: _controller,
            tabs: [
              Tab(
                icon: Icon(Icons.home, size: 30),
              ),
              Tab(
                  icon: Icon(
                Icons.chat_bubble_outline,
                size: 30,
              )),
              Tab(icon: Icon(Icons.apps, size: 30)),
              Tab(icon: Icon(Icons.explore, size: 30)),
              Tab(icon: Icon(Icons.perm_identity, size: 30)),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          //Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
          Icon(Icons.snooze),
          SettingsPage(),
        ],
      ),
        )
      ]),
    );
  }
}


