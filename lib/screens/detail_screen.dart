import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args['ItemId']}'),
            Text('Detail: ${args['massage']}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Go back form Detail Screen.');
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}