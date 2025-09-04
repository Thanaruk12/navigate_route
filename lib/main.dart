import 'package:flutter/material.dart';
import 'package:navigate_route/detail_screens.dart';
import 'package:navigate_route/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: HomeScreen.routeName,
      routes :{
        HomeScreen.routeName  : (context)=> HomeScreen(),
        DetailScreen.routeName : (context)=>const DetailScreen()
      },
    );
  }
}
