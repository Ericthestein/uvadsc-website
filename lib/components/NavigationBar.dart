import 'package:flutter/material.dart';
import 'package:uvadsc_website/data/PageInfo.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({@required this.pages}) : super();

  final List<PageInfo> pages;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavigationBar(pages: pages);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavigationBar(pages: pages);
        } else {
          return DesktopNavigationBar(pages: pages);
        }
      }
    );
  }

}

class DesktopNavigationBar extends StatelessWidget {
  DesktopNavigationBar({@required this.pages}) : super();
  final List<PageInfo> pages;

  navigateToPage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                      onPressed: () { navigateToPage(context, "/"); },
                      child: Image(
                        image: AssetImage("assets/images/logo.png"),
                      )
                  ),
                  Row(
                      children: <Widget>[
                        for (PageInfo page in pages)
                          Row(
                              children: <Widget>[
                                FlatButton(
                                    onPressed: () { navigateToPage(context, page.route); },
                                    child: Text(
                                        page.name,
                                        style: TextStyle(
                                            color: Color(0xff969696),
                                            fontFamily: "Roboto",
                                            fontSize: 18
                                        )
                                    )
                                ),
                                SizedBox(
                                    width: 30
                                )
                              ]
                          )
                      ]
                  )
                ]
            )
          )
      ),
    );
  }
}

/*
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
 */