import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openhours/Pages/RestaurantDetails.dart';
import 'package:openhours/Pages/Restaurants.dart';
import 'package:openhours/Pages/Owner.dart';
import 'package:openhours/Widgets/Textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(255, 199, 152, 255),
              Color.fromARGB(255, 140, 173, 255),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 31, color: Colors.white),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: width * 0.8,
              height: height * 0.06,
              child: PurpTextField('Username', false),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: width * 0.8,
              height: height * 0.06,
              child: PurpTextField('Password', true),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: width * 0.6,
              height: height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Restaurants()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color.fromARGB(255, 199, 152, 255),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
