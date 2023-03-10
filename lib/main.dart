import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dordam/admin/signin.dart';
//import for detector_screens
import 'package:camera/camera.dart';
import 'package:dordam/detector_screens/home.dart';

late List<CameraDescription> cameras;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //code for detector
  cameras = await availableCameras();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.brown,
      ),
      home: const SignInScreen(),
    );
  }
}

