import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mac Spinning Wheel Loader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mac Spinning Wheel Loader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showLoader = true;

  void showHideLoader() {
    setState(() {
      showLoader = !showLoader;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 50,
        width: 50 ,
        child: showLoader ? FlareActor(
          "assets/macosxwheel.flr",
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          animation: "Rotate",
        ) : Container()
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.visibility),
        onPressed: () => showHideLoader(),
      ),
    );
  }
}
