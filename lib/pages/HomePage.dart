import 'package:flutter/material.dart';
import 'package:uvadsc_website/components/NavigationBar.dart';
import 'package:uvadsc_website/data/PageInfo.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.pages}) : super(key: key);

  final List<PageInfo> pages;

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      NavigationBar(pages: widget.pages),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0)
                      )
                    ]
                )
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.lerp(Alignment.bottomLeft, Alignment.bottomRight, 0),
                  end: Alignment.lerp(Alignment.topLeft, Alignment.topRight, 0),
                  colors: [
                    Color.fromRGBO(66, 133, 244, .5),
                    Color.fromRGBO(219, 68, 55, .5),
                    Color.fromRGBO(244, 160, 0, .5),
                    Color.fromRGBO(15, 157, 88, .5),
                  ]),
            ),
        )
    );
  }
}