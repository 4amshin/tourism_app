import 'package:flutter/material.dart';
import 'package:tourism_app/responsive/desktop_web/desktop_web_home_page.dart';
import 'package:tourism_app/responsive/mobile/mobile_home_page.dart';
import 'package:tourism_app/responsive/tablet/tablet_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 500) {
            return const MobileHomePage();
          } else if (constraints.maxWidth <= 800) {
            return const TabletHomePage(
              gridCount: 3,
            );
          } else if (constraints.maxWidth <= 1200) {
            return const DesktopHomePage(
              gridCount: 4,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
