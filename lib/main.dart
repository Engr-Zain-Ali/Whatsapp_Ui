
import 'package:flutter/material.dart';

import 'Whatsapp_UI.dart';

void main() {
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.tealAccent,
      ),

      home:Whatsapp_UI(),



    );
  }
}

