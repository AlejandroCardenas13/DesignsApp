import 'package:flutter/material.dart';
import 'dart:math';

class ButtonsDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _backgroundApp(),
            SingleChildScrollView(
              child: Column(
                children: [_titles()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _backgroundApp() {
    final Widget _gradient = Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.5),
                end: FractionalOffset(0.0, 1.0),
                colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ])));

    final Widget _pinkBox = Transform.rotate(
      //alignment: Alignment.centerLeft, En lugar de usar esto se usará el Positioned
      origin: Offset(0.0, 0.0),
      angle: -pi / 4.6,
      child: Container(
          height: 350.0,
          width: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]),
              borderRadius: BorderRadius.circular(90.0))),
    );

    return Stack(
      children: [_gradient, Positioned(top: -100, child: _pinkBox)],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Color.fromRGBO(236, 98, 188, 1.0),
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: 'ButtonDesign'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grass), label: 'ScrollDesign'),
            BottomNavigationBarItem(
                icon: Icon(Icons.hot_tub), label: 'BasicDesign'),
          ],
        ));
  }
}
