import 'package:flutter/material.dart';
import 'package:food_waste_app/CustomerHomepage.dart';
import 'package:food_waste_app/RestaurantProfile.dart';

class CustomerLogin extends StatefulWidget {
  @override
  _CustomerLogin createState() => _CustomerLogin();
}

class _CustomerLogin extends State<CustomerLogin> {
  final _formKey_email = GlobalKey<FormState>();
  final _formKey_password = GlobalKey<FormState>();
  TextEditingController controller_email = TextEditingController();
  TextEditingController controller_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 75),
          title(),
          SizedBox(height: 30),
          email(),
          SizedBox(height: 10),
          password(),
          forgot(),
          SizedBox(height: 30),
          button(),
          SizedBox(height: 20),
          newAccount(),
          SizedBox(height: 10),
          guest()
        ],
      ),
    );
  }

  Widget enterEmail() {
    return Form(
      key: _formKey_email,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_email,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterPassword() {
    return Form(
      key: _formKey_password,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_password,
          obscureText: true,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget email() {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          "   Email:",
          style: TextStyle(fontSize: 25),
        ),
        Expanded(child: enterEmail())
      ],
    );
  }

  Widget password() {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          "   Password:",
          style: TextStyle(fontSize: 25),
        ),
        Expanded(child: enterPassword())
      ],
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

  void onPressed() {
    controller_email.clear();
    controller_password.clear();
    Navigator.of(context).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, animation2) => CustomerHomepage(),
        transitionDuration: Duration(seconds: 0)),
      (route) => false);
  }

  Widget newAccount() {
    return Text(
      "Create an account",
      style: TextStyle(fontSize: 20, color: Colors.blue),
      textAlign: TextAlign.center,
    );
  }

  Widget guest() {
    return Text(
      "Continue as guest",
      style: TextStyle(fontSize: 20, color: Colors.blue),
      textAlign: TextAlign.center,
    );
  }

  Widget title() {
    return Text(
      "CUSTOMER LOGIN",
      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget forgot() {
    return Row(
      children: [
        SizedBox(width: 200),
        Text(
          "Forgot Password",
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ],
    );
  }
}

class RestaurantLogin extends StatefulWidget {
  @override
  _RestaurantLogin createState() => _RestaurantLogin();
}

class _RestaurantLogin extends State<RestaurantLogin> {
  final _formKey_email = GlobalKey<FormState>();
  final _formKey_password = GlobalKey<FormState>();
  TextEditingController controller_email = TextEditingController();
  TextEditingController controller_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 75),
          title(),
          SizedBox(height: 30),
          email(),
          SizedBox(height: 10),
          password(),
          forgot(),
          SizedBox(height: 30),
          button(),
          SizedBox(height: 20),
          newAccount(),
        ],
      ),
    );
  }

  Widget enterEmail() {
    return Form(
      key: _formKey_email,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_email,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterPassword() {
    return Form(
      key: _formKey_password,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_password,
          obscureText: true,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget email() {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          "   Email:",
          style: TextStyle(fontSize: 25),
        ),
        Expanded(child: enterEmail())
      ],
    );
  }

  Widget password() {
    return Row(
      children: [
        SizedBox(width: 10),
        Text(
          "   Password:",
          style: TextStyle(fontSize: 25),
        ),
        Expanded(child: enterPassword())
      ],
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

  void onPressed() {
    controller_email.clear();
    controller_password.clear();
        Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
            pageBuilder: (context, animation, animation2) => RestaurantProfile(),
            transitionDuration: Duration(seconds: 0)),
        (route) => false);
  }

  Widget newAccount() {
    return Text(
      "Add your restaurant",
      style: TextStyle(fontSize: 20, color: Colors.blue),
      textAlign: TextAlign.center,
    );
  }

  Widget title() {
    return Text(
      "RESTAURANT LOGIN",
      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  Widget forgot() {
    return Row(
      children: [
        SizedBox(width: 200),
        Text(
          "Forgot Password",
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ],
    );
  }
}
