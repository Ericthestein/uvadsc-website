import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterBar extends StatelessWidget {
  FooterBar(): super();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return DesktopFooterBar();
          } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
            return DesktopFooterBar();
          } else {
            return DesktopFooterBar();
          }
        }
    );
  }
}

class DesktopFooterBar extends StatelessWidget {
  DesktopFooterBar() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.6,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GFIconButton(
                  color: Color(0xff0f76a8),
                  onPressed: () {this.onLinkedInPressed();},
                  icon: Icon(Entypo.linkedin),
                  shape: GFIconButtonShape.circle
              ),
              GFIconButton(
                  color: Color(0xff00aced),
                  onPressed: () {this.onTwitterPressed();},
                  icon: Icon(Entypo.twitter),
                  shape: GFIconButtonShape.circle
              ),
              GFIconButton(
                  color: Color(0xff7289da),
                  onPressed: () {this.onDiscordPressed();},
                  icon: Icon(FontAwesome5Brands.discord),
                  shape: GFIconButtonShape.circle
              ),
              GFIconButton(
                  color: Color(0xffdd2a7b),
                  onPressed: () {this.onInstagramPressed();},
                  icon: Icon(AntDesign.instagram),
                  shape: GFIconButtonShape.circle
              ),
              GFIconButton(
                  color: Color(0xffc5302a),
                  onPressed: () {this.onYoutubePressed();},
                  icon: Icon(AntDesign.youtube),
                  shape: GFIconButtonShape.circle
              )
            ],
          )
      ),
    );
  }

  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  onLinkedInPressed() {
    this.launchURL("https://www.linkedin.com/company/67768771");
  }

  onTwitterPressed() {
    this.launchURL("https://twitter.com/uvadsc");
  }

  onDiscordPressed() {
    this.launchURL("https://discord.gg/XvHGkeV");
  }

  onInstagramPressed() {
    this.launchURL("https://www.instagram.com/uvadsc/");
  }

  onYoutubePressed() {
    this.launchURL("https://www.youtube.com/channel/UCpTxyXosssU1Ba2H0vkhc8A/?guided_help_flow=5");
  }
}