import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('INDONESIA VACATION'),
      ),


      body: new Container(
        child: new ListView(
        children : <Widget>[
        new Stack(
        children: <Widget>[
          new Image.asset(
                  'images/img1.JPG',
                  fit:BoxFit.fill,
                  scale: 2.0,
                   width: 800.0,
                height:560.0,
              ),
          Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(top: 167, right: 170),
            width: 150.0,
            child: new RaisedButton(
              child: new Text ("Login"),
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> _PageDua()),
                    );
                  },
                ),
            ),
            ),
           Align(
          alignment: Alignment.bottomCenter,
          child: Container(
          margin: EdgeInsets.only(top: 167, left: 180),
            width: 150.0,
          child: new RaisedButton(
          child: new Text ("Register"),
          color: Colors.lightBlue,
          textColor: Colors.white,
          onPressed: (){}
          ),
          ),
           ),
              ],
              ),
            ],
            ),
            ),
        );
  }
}
class _PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/img2.JPG',
              fit:BoxFit.fill,
              scale: 2.0,
            ),
            new Center(
                child : new RaisedButton(
                  child: new Text ("View"),
                  color: Colors.lightBlue,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> _PageTiga()),
                    );
                  },
                )
            ),


          ],
        ),
      ),
    );
  }
}
class _PageTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/img3.JPG',
              fit:BoxFit.fill,
              scale: 2.0,
            ),


          ],
        ),
      ),
    );
  }
}