import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:designs_app/src/pages/basic_page.dart';
import 'package:designs_app/src/pages/scroll_page.dart';
import 'package:designs_app/src/pages/buttons_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Para cambiar el color del status bar lo podemos hacer en el main.dart con la siguiente línea de código:
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'buttons',
      routes: {
        'basic': (BuildContext context) => BasicDesign(),
        'scroll': (BuildContext context) => ScrollDesign(),
        'buttons': (BuildContext context) => ButtonsDesign(),
      },
    );
  }
}
