import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/home.dart';
import 'package:platzi_trips_app/profile.dart';
import 'package:platzi_trips_app/search.dart';

class PlatziTripsCupertino extends StatelessWidget {

  Padding defaultPadding(Widget child) {
    return  Padding(
        padding: const EdgeInsets.only(top: 12),
        child:child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(

        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: defaultPadding(Icon(Icons.home, color: Colors.indigo)),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: defaultPadding(Icon(Icons.search, color: Colors.indigo)),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: defaultPadding(Icon(Icons.person, color: Colors.indigo)),
                  title: Text("")
              ),
            ]
        ),

        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Search(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
              break;

          }

        },
      ),
    );
  }

}