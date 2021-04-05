import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [_pageOne(), _pageTwo()],
    ));
  }

  Widget _pageOne() {
    return Stack(
      children: [_backgroundColor(), _backgroundImage(), _textPageOne()],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: HexColor('#50c2dd'),
    );
  }

  Widget _backgroundImage() {
    return Image(
      image: AssetImage('assets/scroll-1.png'),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _textPageOne() {
    final _style = TextStyle(
        color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text('20°', style: _style),
            Text('Monday', style: _style),
            Expanded(child: SizedBox()),
            Icon(Icons.keyboard_arrow_down_outlined,
                color: Colors.white, size: 70)
          ],
        ),
      ),
    );
  }

  Widget _pageTwo() {
    return Stack(
      children: [_backgroundColor(), _btnPageTwo()],
    );
  }

  Widget _btnPageTwo() {
    return Center(
      child: ElevatedButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Text('Hello Flutter!!'),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent, onPrimary: Colors.white, elevation: 10),
        onPressed: () => null,
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
