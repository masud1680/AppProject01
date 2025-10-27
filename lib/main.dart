
import 'package:flutter/material.dart';
import 'package:project_01/home.dart';

import 'package:project_01/main_home.dart';
import 'package:project_01/profile.dart';
import 'package:project_01/spalash_Screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: HomeScreen(),
    )
  );
}