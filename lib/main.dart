import 'package:chat_gpt/conversation_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF5663F7, <int, Color>{
            50: Color(0xFF5663F7),
            100: Color(0xFF5663F7),
            200: Color(0xFF5663F7),
            300: Color(0xFF5663F7),
            400: Color(0xFF5663F7),
            500: Color(0xFF5663F7),
            600: Color(0xFF5663F7),
            700: Color(0xFF5663F7),
            800: Color(0xFF5663F7),
            900: Color(0xFF5663F7),
   },),
      ),
      home: const MyHomePage(title: 'Rayen GPT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConverstaionList()
    );
  }
}
