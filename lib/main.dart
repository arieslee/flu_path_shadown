import 'package:flutter/material.dart';
import './navbar/custom_navigation_bar.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //scaffoldBackgroundColor: Colors.grey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'This is my home page',
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Colors.transparent),
              child: CustomNavigationBar(
                index: 2,
                height: 75.0,
                items: <Widget>[
                  NavButtonText(
                    icon: Icon(Icons.home, size: 30),
                    text: 'Home',
                  ),
                  NavButtonText(
                    icon: Icon(Icons.category, size: 30),
                    text: 'Cate',
                  ),
                  Icon(Icons.add, size: 50, color: Colors.orange,),
                  NavButtonText(
                    icon: Icon(Icons.texture, size: 30),
                    text: 'Tex',
                  ),
                  NavButtonText(
                    icon: Icon(Icons.laptop, size: 30),
                    text: 'Lap',
                  ),
                ],
                color: Colors.white,
                buttonBackgroundColor: Colors.white,
                backgroundColor: Colors.transparent,
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(milliseconds: 600),
                onTap: (index) {
                  print(index);
                },
              ),
            ),
          ),

        ],
      )
    );
  }
}
