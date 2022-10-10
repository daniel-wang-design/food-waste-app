import 'package:flutter/material.dart';
import "SearchPage.dart";

class CustomerHomepage extends StatefulWidget {
  @override
  _CustomerHomepage createState() => _CustomerHomepage();
}

class _CustomerHomepage extends State<CustomerHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          title(),
          SizedBox(height: 10),
          header(),
          SizedBox(height: 10),
          mysteryMealsNearby(),
          SizedBox(height: 10),
          nearby_tiles(),
          SizedBox(height: 10),
          mysteryMealsStarting(),
          SizedBox(height: 10),
          starting_soon(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        height: 70,
        child: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.home,
                size: 50,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.search, size: 50,),
                onPressed: onPressed,
                padding: EdgeInsets.only(bottom: 7)
              ),
            ),
            Expanded(
              child: Icon(
                Icons.favorite,
                size: 50,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
            pageBuilder: (context, animation, animation2) => Search(),
            transitionDuration: Duration(seconds: 0)),
        (route) => false);
  }

  Widget nearby_tiles() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.arrow_back_ios,
          size: 30,
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: AssetImage("lib/assets/tiles (1).png"),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: AssetImage("lib/assets/tiles (2).png"),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 30,
        ),
      ],
    );
  }

  Widget starting_soon() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.arrow_back_ios,
          size: 30,
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: AssetImage("lib/assets/tiles (5).png"),
            ),
          ),
        ),
        SizedBox(width: 20),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            image: DecorationImage(
              image: AssetImage("lib/assets/tiles (4).png"),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 30,
        ),
      ],
    );
  }

  Widget title() {
    return Text(
      " CHEAP EATS ",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget mysteryMealsNearby() {
    return Text(
      "  Mystery Meals Nearby",
      style: TextStyle(fontSize: 30),
    );
  }

  Widget mysteryMealsStarting() {
    return Text(
      "  Mystery Meals Starting Soon",
      style: TextStyle(fontSize: 27),
    );
  }

  Widget header() {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 60,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Toronto, Canada",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "within 20 km",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Change location",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ],
    );
  }
}
