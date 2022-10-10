import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'RestaurantHomepage.dart';

class RestaurantProfile extends StatefulWidget {
  @override
  _RestaurantProfileState createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile> {
  final _formKey_name = GlobalKey<FormState>();
  final _formKey_address = GlobalKey<FormState>();
  final _formKey_telephone = GlobalKey<FormState>();
  final _formKey_website = GlobalKey<FormState>();

  TextEditingController controller_name = TextEditingController();
  TextEditingController controller_address = TextEditingController();
  TextEditingController controller_telephone = TextEditingController();
  TextEditingController controller_website = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(22),
        child: ListView(
          children: [
            title(),
            name(),
            address(),
            telephone(),
            website(),
            logo(),
            uploadLogo(),
            photo(),
            uploadPhoto(),
            menuDetails(),
            enterMenuDetails(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
            pageBuilder: (context, animation, animation2) => RestaurantLogin(),
            transitionDuration: Duration(seconds: 0)),
        (route) => false);
  }


  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Restaurant Profile",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  } 

  Widget name() {
    return Row(
      children: [
        Text(
          "Name:",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterName())
      ],
    );
  }

  Widget address() {
    return Row(
      children: [
        Text(
          "Address:",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterAddress())
      ],
    );
  }

  Widget telephone() {
    return Row(
      children: [
        Text(
          "Telephone:",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterTelephone())
      ],
    );
  }

  Widget website() {
    return Row(
      children: [
        Text(
          "Website:",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterWebsite())
      ],
    );
  }

  Widget logo() {
    return Row(
      children: [
        Text(
          "Logo:",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget uploadLogo() {
    return Row(
      children: [
        Text(
          "Upload Logo",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ],
    );
  }

  Widget photo() {
    return Row(
      children: [
        Text(
          "\nPhoto:",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget uploadPhoto() {
    return Row(
      children: [
        Text(
          "Upload Photo",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ],
    );
  }

  Widget menuDetails() {
    return Row(
      children: [
        Text(
          "\nMenu Details:",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget enterName() {
    return Form(
      key: _formKey_name,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_name,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterAddress() {
    return Form(
      key: _formKey_address,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_address,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterTelephone() {
    return Form(
      key: _formKey_telephone,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_telephone,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterWebsite() {
    return Form(
      key: _formKey_website,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_website,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget button() {
    return Container(
      width: 300,
      height: 80,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: onPressed,
        child: Text(
          "LOGIN",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
    );
  }

  Widget submitButton() {
    return Container(
      width: 300,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: onPressed1,
        child: Text(
          "Done",
          style: TextStyle(color: Colors.white, fontSize: 20)
        ),
      ),
    );
  }
  
  void onPressed1() {
    Navigator.of(context).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, animation2) => RestaurantHomepage(),
        transitionDuration: Duration(seconds: 0)),
      (route) => false);
  }
}

class enterMenuDetails extends StatefulWidget {
   
   @override
   State<enterMenuDetails> createState() => _enterMenuDetailsState();
}

class _enterMenuDetailsState extends State<enterMenuDetails> {
  bool vegetarianVal = false;
  bool veganVal = false;
  bool dairyVal = false;
  bool glutenVal = false;
  bool milkVal = false;
  bool eggVal = false;
  bool soyVal = false;
  bool wheatVal = false;
  bool peanutsVal = false;
  bool treenutsVal = false;
  bool fishVal = false;
  bool otherVal = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return Colors.blue;
    }
    return Container(
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("Vegetarian"),
            value: vegetarianVal,
            
            onChanged: (bool? value) {
              setState(() {
                vegetarianVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("Vegan"),
            value: veganVal,
            onChanged: (bool? value) {
              setState(() {
                veganVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("Dairy-free"),
            value: dairyVal,
            onChanged: (bool? value) {
              setState(() {
                dairyVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("Gluten-free"),
            value: glutenVal,
            onChanged: (bool? value) {
              setState(() {
                glutenVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain milk"),
            value: milkVal,
            onChanged: (bool? value) {
              setState(() {
                milkVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain eggs"),
            value: eggVal,
            onChanged: (bool? value) {
              setState(() {
                eggVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain soy"),
            value: soyVal,
            onChanged: (bool? value) {
              setState(() {
                soyVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain wheat"),
            value: wheatVal,
            onChanged: (bool? value) {
              setState(() {
                wheatVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain peanuts"),
            value: peanutsVal,
            onChanged: (bool? value) {
              setState(() {
                peanutsVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain tree nuts"),
            value: treenutsVal,
            onChanged: (bool? value) {
              setState(() {
                treenutsVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("May contain fish"),
            value: fishVal,
            onChanged: (bool? value) {
              setState(() {
                fishVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text("Other:__________"),
            value: otherVal,
            onChanged: (bool? value) {
              setState(() {
                otherVal = value!;
              });
            },
            contentPadding: EdgeInsets.all(0.0),
          )
        ]
      )
    );
  }
}