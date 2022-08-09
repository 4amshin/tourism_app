import 'package:flutter/material.dart';

import 'package:tourism_app/Models/tourism_place.dart';
import 'package:tourism_app/responsive/desktop_web/desktop_web_destination_page.dart';
import 'package:tourism_app/responsive/mobile/mobile_destination_page.dart';
import 'package:tourism_app/responsive/tablet/tablet_destination_page.dart';

class DestinationPage extends StatelessWidget {
  final TourismPlace place;
  const DestinationPage({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 500) {
          return MobileDestinationPage(place: place);
        } else if (constraints.maxWidth <= 800) {
          return TabletDestinationPage(
            place: place,
          );
        } else if (constraints.maxWidth <= 1200) {
          return DesktopDestinationPage(
            place: place,
          );
        } else {
          return Container();
        }
      },
    );
  }
}
