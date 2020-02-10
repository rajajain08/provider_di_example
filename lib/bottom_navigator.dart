import 'package:flutter/material.dart';
import 'package:slides_example/navigator_screens/screen_one.dart';
import 'package:slides_example/navigator_screens/screen_two.dart';

class BottomNavigator extends StatefulWidget {
  BottomNavigator({Key key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator>
    with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.filter_1),
              text: 'Screen 1',
            ),
            Tab(
              icon: Icon(Icons.filter_2),
              text: 'Screen 2',
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: this.tabController,
        children: <Widget>[
          ScreenOne(),
          ScreenTwo(),
        ],
      ),
    );
  }
}
