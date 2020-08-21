import 'package:flutter/material.dart';
import 'package:uvadsc_website/components/FooterBar.dart';
import 'package:uvadsc_website/components/NavigationBar.dart';
import 'package:uvadsc_website/data/PageInfo.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key key, this.pages}) : super(key: key);

  final List<PageInfo> pages;

  @override
  EventsPageState createState() {
    return new EventsPageState();
  }
}

class EventsPageState extends State<EventsPage> {
  EventsPageState(): super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NavigationBar(pages: widget.pages),
                  SingleChildScrollView(
                      child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                              child: Column(
                                children: [

                                ],
                              ),
                            )
                          ]
                      )
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: FooterBar()
                  )
                ]
            )
        )
    );
  }
}