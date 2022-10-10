import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: onPressed,
        ),
        title: Text("Search"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          header(),
          SizedBox(height: 10),
          subheader(),
          SizedBox(height: 10),
          list(),
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
              ),
            ),
            Expanded(
              child: Icon(
                Icons.search,
                color: Colors.blue,
                size: 50,
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

  Widget subheader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 10),
        Text(
          "  Filter",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
        SizedBox(width: 130),
        Text(
          " Sort by: ",
          style: TextStyle(fontSize: 15),
        ),
        Text(
          "Price (Low to High)",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ],
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

  Widget list() {
    return Container(
      height: 400,
      child: ListView(
        children: [
          item(),
          item0(),
          item1(),
          item2(),
          item3(),
          item4(),
          item5(),
          item6(),
          item7(),

        ],
      ),
    );
  }

  Widget item0() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image.png"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Healthy Habits (until 5:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "100 Main Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Chinese",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "10+\n\$5",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item7() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (1).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Golden Lobster (until 6:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "89 Queen's Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "American",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "15+\n\$18",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item6() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (7).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Taco Hut (until 8:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "78 Steeles Avenue, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Mexican",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "10+\n\$10",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item5() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (5).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "John's Burgers (until 6:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "2 Queen's Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "American",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "5+\n\$9",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item4() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (4).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hearty Wok (until 5:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "9 Eglington Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Chinese",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "5+\n\$8",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item3() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (3).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Artisan Pizza (until 7:00)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "32 Kingston Road, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Italian",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "20+\n\$8",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item2() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (2).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pasta Co. (until 6:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "23 Dundas Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Italian",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "10+\n\$6",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item1() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/image (1).jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "John's Deli (until 6:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "2 Queen's Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "American",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "25+\n\$6",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget item() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/sushi_small.jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sushi Place (until 5:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "12 Bloor Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Japanese",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "15+\n\$5",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  void onPressed() {}
}
