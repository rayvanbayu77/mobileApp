import 'package:flutter/material.dart';
import './controller.dart';
import './profile.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' RayApp'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/homeview'),
              title: Text('Home'),
              leading: CircleAvatar(
                child: Icon(Icons.apps),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('profliepages'),
              title: Text('Profile'),
              leading: CircleAvatar(
                child: Icon(Icons.apps),
              ),
            ),
            ListTile(
              title: Text('Settings'),
              leading: CircleAvatar(
                child: Icon(Icons.apps),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
