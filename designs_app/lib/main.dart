import 'package:flutter/material.dart';
import 'package:designs_app/src/pages/basic_page.dart';
import 'package:designs_app/src/pages/scroll_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'scroll',
      routes: {
        'basic': (BuildContext context) => BasicDesign(),
        'scroll': (BuildContext context) => ScrollDesign(),
      },
    );
  }
}
