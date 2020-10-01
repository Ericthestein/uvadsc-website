import 'package:flutter/material.dart';
import 'package:uvadsc_website/components/FooterBar.dart';
import 'package:uvadsc_website/components/NavigationBar.dart';
import 'package:uvadsc_website/data/PageInfo.dart';

String requiredUVAStatement = "Although this organization has members who are University of Virginia students and may have University employees associated or engaged in its activities and affairs, the organization is not a part of or an agency of the University. It is a separate and independent organization, which is responsible for and manages its own activities and affairs. The University does not direct, supervise or control the organization and is not responsible for the organization’s contracts, acts or omissions.";

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
                                  Image(
                                    image: AssetImage("assets/images/logo-vertical.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                                    child: Text(requiredUVAStatement)
                                  )
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