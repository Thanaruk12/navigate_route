import 'package:flutter/material.dart';
import 'package:navigate_route/detail_screens.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Home app')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.pushNamed(
              context,
              DetailScreen.routeName,
              arguments: {
                // ส่ง arguments เป็น Map
                'id': 'ARG-789',
                'title': 'ข้อมูลจาก Named Route Args',
              },
            );
            print('รับค่ากลับ$result');
          },
          child: const Text('Go to Detail'),
        ),
      ),
    );
  }
}
