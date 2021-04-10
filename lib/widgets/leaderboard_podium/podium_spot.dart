import 'package:flutter/material.dart';
import '../pfp.dart';
import '../hexPfp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PodiumSpot extends StatelessWidget {
  final String pfpUrl;
  final double pfpSize;
  final String username;
  final String score;
  final int rank;
  PodiumSpot({this.pfpUrl, this.pfpSize, this.username, this.score, this.rank});

  Widget _crownBuilder(int rank) {
    switch (rank) {
      case 1:
        return Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(5.0)),
            child: Center(
              child: Padding(
                padding:EdgeInsets.only(right:3.2, bottom:2.0),
                child: Icon(FontAwesomeIcons.crown,
                  size: 18.0, color: Colors.yellow),)
            ));
      case 2:
          return Container(
            width: 22.0,
            height: 22.0,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(5.0)),
            child: Center(
              child: Padding(
                padding:EdgeInsets.only(right:3.2, bottom:1.0),
                child: Icon(FontAwesomeIcons.crown,
                  size: 13.0, color: Colors.redAccent),)
            ));
      case 3:
       return Container(
            width: 22.0,
            height: 22.0,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(5.0)),
            child: Center(
              child: Padding(
                padding:EdgeInsets.only(right:3.2, bottom:1.0),
                child: Icon(FontAwesomeIcons.crown,
                  size: 13.0, color: Colors.orangeAccent),)
            ));
      default:
        return Icon(FontAwesomeIcons.crown,
            size: 15.0, color: Colors.yellowAccent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            HexPfp(imageUrl: pfpUrl, size: pfpSize),
            Positioned(right: 0.0, top: 0.0, child: _crownBuilder(rank)),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Text(username,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Nunito")),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 5.0, color: Colors.white)),
          alignment: Alignment.center,
          child: Text(score),
        )
      ],
    ));
  }
}
