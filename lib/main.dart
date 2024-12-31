import 'package:flutter/material.dart';
import 'package:postapi/apipost.dart';
import 'package:postapi/new.dart';
import 'package:postapi/newpost/login.dart';
import 'package:postapi/newpost/newlog.dart';
import 'package:postapi/newpost/postiem/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Newp(),
    );
  }
}

