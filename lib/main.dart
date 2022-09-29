// ignore_for_file: unused_element, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, sort_child_properties_last, camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/profile.dart';
import './home.dart';
import './home/controller.dart';
import './home/view.dart';

void main() {
  runApp(MaterialApp(
    home: HomeView(),
    // initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/homeview': (context) => HomeView(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    'profliepages': (context) => profilPage(),
    
  },
    debugShowCheckedModeBanner: false,
  ));
}

class kntlPage extends StatefulWidget {
  @override
  _kntlPageState createState() => _kntlPageState();
}

class _kntlPageState extends State<kntlPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.zero, children: <Widget>[
      buildTop(),
      buildContent(),
      bottomContent(),
    ]));
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset('img/background.png'),
        width: double.infinity,
        height: coverHeight,
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('img/Yoyoy.png'),
      );

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text('Rayvan Bayu Abhinowo',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text('XII RPL B',
              style: TextStyle(fontSize: 20, color: Colors.black)),
        ],
      );
  Widget bottomContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text('PoB        : Tenggarong, Kutai Kertanegara, Samarinda',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )),
          Text('DoB        : 24 Maret 2005',
              style: TextStyle(fontSize: 18, color: Colors.black)),
          Text('Address : Mekar Asri RT2/1, Popongan, Karanganyar',
              style: TextStyle(fontSize: 18, color: Colors.black)),
        ],
      );
}
