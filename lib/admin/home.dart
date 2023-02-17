//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:dordam/admin/signin.dart';

import '../screens/places_screen.dart';
import '../utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   child: ElevatedButton(
      //     child: Text("Log Out"),
      //     onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
      //     },
      //     ),
      //   child: ElevatedButton(
      //     child: Text("Google Map"),
      //     onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) => PlacesScreen()));
      //     },
      //     ),
          
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [ 
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(  
        child: Padding(
          padding: EdgeInsets.fromLTRB(20,120,20,0),
          child: Column(
            children: <Widget>[
             ElevatedButton(
          child: Text("Log Out"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
          },
          ),
        ElevatedButton(
          child: Text("Google Map"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PlacesScreen()));
          },
          ),
           ],
          ),
        ),
      ),
      ),
      );
    
  }
}
