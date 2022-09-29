import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Route Navigation',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.green,
    ),
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/laman1.dart',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/laman1.dart': (context) => HomeScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/main.dart': (context) => SecondScreen(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Here'),
          color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pushNamed(context, '/main.dart');
          },
        ),
      ),
    );
  }

  RaisedButton(
      {required Text child,
      required MaterialAccentColor color,
      required Null Function() onPressed}) {}
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blueGrey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }

  RaisedButton(
      {required MaterialColor color,
      required Null Function() onPressed,
      required Text child}) {}
}
