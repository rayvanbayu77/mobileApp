import 'package:flutter/material.dart';
import './home/view.dart';
import './kategori/view.dart';
import './home/profile.dart';

class HomeApps extends StatefulWidget {
  @override
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      routes: {
        '/': (BuildContext _) => HomeView(),
        '/kategori': (BuildContext _) => KategoriView()
      },
      initialRoute: '/',
    );
  }
}
