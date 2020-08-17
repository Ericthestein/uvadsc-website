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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              onPressed: () { navigateToPage(context, "/"); },
              child: Text(
                  "Google DSC @ UVA",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30
                  )
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
                                style: TextStyle(color: Colors.black)
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
    );
  }
}