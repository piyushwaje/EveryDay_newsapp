
import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutternews/api/categorywiseviewmodel.dart';
import 'package:flutternews/api/mainscreen.dart';
import 'package:flutternews/splascsreen.dart';



import 'api/newsapi.dart';
import 'api/viewmodel.dart';
import 'newssetails.dart';


void main() {
  runApp( MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Every Day',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


