import 'package:flutter/material.dart';
import 'unlock.dart';
import 'loading.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Shimmer',
      routes: {
        'loading': (_) => Loading(),
        'slide': (_) => Unlock(),
      },
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextStyle textStyle =
      TextStyle(fontSize: 20, fontFamily: "Cursive", color: Colors.red);
  @override
  Widget build(BuildContext context) {
    final loading = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        onPressed: () {
          Navigator.of(context).pushNamed('loading');
        },
        child: Text(
          "Loading Page",
          textAlign: TextAlign.center,
          style: textStyle.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    final unlock = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        onPressed: () {
          Navigator.of(context).pushNamed('slide');
        },
        child: Text(
          "Slide To Unlock",
          textAlign: TextAlign.center,
          style: textStyle.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Shimmer'),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[loading, SizedBox(height: 30), unlock],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black54,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Post"), icon: Icon(Icons.cloud_upload)),
          BottomNavigationBarItem(title: Text("Page"), icon: Icon(Icons.pages))
        ],
      ),
    );
  }
}
