import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = 'Default Value';
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Value: $value'),
            TextFormField(
              controller: textController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              setState(() {
                value = textController.text.toString();
              });
            }, child: const Text('Set Text'))
          ],
        ),
      ),
    );
  }
}