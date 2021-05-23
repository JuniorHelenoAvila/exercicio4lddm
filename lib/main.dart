/*
 * Estou na video aula que a professora mandou, estou no minuto 27:04
 */

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_firebase/Authenticate/Autheticate.dart';
import 'package:crud_firebase/view/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: Authenticate.tag,
        routes: {
          Authenticate.tag: (context) => Authenticate(),
        } // fim routes
        );
  }
}
