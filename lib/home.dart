import 'package:flutter/material.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';
import 'description_place.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            new DescriptionPlace("Duwilli Ellas",5,"Lorem"),
            new ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
