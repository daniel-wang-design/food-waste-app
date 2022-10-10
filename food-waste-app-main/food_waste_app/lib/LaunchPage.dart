import 'package:flutter/material.dart';
import 'LoginPage.dart';

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPage createState() => _LaunchPage();
}

class _LaunchPage extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            name(),
            SizedBox(height: 70),
            customer(),
            SizedBox(height: 30),
            restaurant(),
          ],
        ),
      ),
    );
  }

  Widget name() {
    return Text(
      "CHEAP EATS",
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    );
  }

  Widget customer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.blue,
      ),
      width: 365,
      height: 150,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: customerOption,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CONTINUE AS",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "CUSTOMER",
              style: TextStyle(color: Colors.white, fontSize: 55),
            ),
          ],
        ),
      ),
    );
  }

  Widget restaurant() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.blue,
      ),
      width: 365,
      height: 150,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: restaurantOption,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CONTINUE AS",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "RESTAURANT",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }

  void customerOption() {
    Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
            pageBuilder: (context, animation, animation2) => CustomerLogin(),
            transitionDuration: Duration(seconds: 0)),
        (route) => false);
  }

  void restaurantOption() {
    Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
            pageBuilder: (context, animation, animation2) => RestaurantLogin(),
            transitionDuration: Duration(seconds: 0)),
        (route) => false);
  }
}
