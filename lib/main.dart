import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:simpsonsviewer/home/home_screen.dart';
import 'package:simpsonsviewer/home/logic.dart';

import 'api_services/urls.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(UserHomeLogic());
  String data = await rootBundle.loadString("assets/json/data.json");
  Get.find<UserHomeLogic>().jsonResult = jsonDecode(data);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

