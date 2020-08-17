import 'package:flutter/material.dart';
import 'package:uvadsc_website/components/NavigationBar.dart';
import 'package:uvadsc_website/data/PageInfo.dart';

class ProjectsPage extends StatefulWidget {
  ProjectsPage({Key key, this.pages}) : super(key: key);

  final List<PageInfo> pages;

  @override
  ProjectsPageState createState() {
    return new ProjectsPageState();
  }


}

class ProjectsPageState extends State<ProjectsPage> {
  ProjectsPageState() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
                child: Column(
                    children: <Widget>[
                      NavigationBar(pages: widget.pages),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0)
                      )
                    ]
                )
            )
        )
    );
  }
}