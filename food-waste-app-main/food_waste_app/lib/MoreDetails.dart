import 'package:flutter/material.dart';
import "MoreDetails(liked).dart";

class MoreDetails extends StatefulWidget {
  @override
  _MoreDetails createState() => _MoreDetails();
}

class _MoreDetails extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [background(), like()],
      ),
    );
  }

  Widget background() {
    return Image(
      image: AssetImage("lib/assets/more_details1.png"),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
  
  Widget like() {
    return Positioned(
      child: IconButton(
        icon: Icon(
          Icons.favorite_border,
          color: Colors.black,
          size: 45,
        ),
        onPressed: onPressed2,
      ),
      left: 320,
      bottom: 460,
    );
  }

  void onPressed2() {
    Navigator.of(context).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, animation2) => MoreDetails2(),
        transitionDuration: Duration(seconds: 0)),
      (route) => false);
  }
}