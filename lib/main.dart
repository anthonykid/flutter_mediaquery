import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      //media query so we can take the resolution of the phone
      /*body: Container(
        color: Colors.red[300], //use colors so we can see the diffrence
        width: MediaQuery.of(context).size.width / 3, //this is to make the width 1/3 of the phone users are using
        height: MediaQuery.of(context).size.height / 2, //this make the height 1/2 of the phone users are using, following the phone resolutions
      ),*/
      body: (MediaQuery.of(context).orientation == Orientation.portrait) //using if
          ? Column(
              children: generateContainers(), //if true then generate containers
            )
          : Row(children: generateContainers()), //if false going to sides
    );
  }

  //using if 1 line (terms)?iftrue:iffalse
  List<Widget> generateContainers() {
    //we can make this auto with extract method the widget and put the name
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}
