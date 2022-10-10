import 'package:flutter/material.dart';

class MoreDetails2 extends StatefulWidget {
  @override
  _MoreDetails2 createState() => _MoreDetails2();
}

class _MoreDetails2 extends State<MoreDetails2> {
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
          Icons.favorite,
          color: Colors.red,
          size: 45,
        ),
        onPressed: null,
      ),
      left: 320,
      bottom: 460,
    );
  }
}