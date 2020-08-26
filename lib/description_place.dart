import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int starts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.starts,this.descriptionPlace);


  @override
  Widget build(BuildContext context) {


    final topMargin = 350.0;

    descriptionPlace =  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper ornare sodales. Cras condimentum enim purus, "
        "sed placerat nunc volutpat et. Nunc malesuada, quam vel consectetur convallis, libero nisi volutpat nibh, "
        "ut aliquet diam eros eu tortor. Cras eget accumsan purus. Quisque sed justo convallis, efficitur ipsum sed, hendrerit nisl. \n"
        "Duis tincidunt, est vitae molestie laoreet elit dolor varius dui, ac malesuada ex orci vel libero.";


    final description = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),
      ),
    );

    final star= Container(
      margin: EdgeInsets.only(
          top: topMargin,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final star_half= Container(
      margin: EdgeInsets.only(
          top: topMargin,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star_border= Container(
      margin: EdgeInsets.only(
          top: topMargin,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: topMargin,
            left: 20.0,
            right: 20.0
          ),
          child: Text(namePlace,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,),
        ),
        Row(
          children: [
            star,star,star,star_half,star_border
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        ButtonPurple("Navigate")],
    );
  }
}
