import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  final _title_style = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);
  final _subtitle_style = TextStyle(fontSize: 19.0, color: Colors.grey);
  final _action_text_style = TextStyle(fontSize: 15.0, color: Colors.teal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          _createImage(),
          _createTitle(),
          _createActions(),
          _createText(),
          _createText(),
          _createText()
        ]),
      ),
    );
  }

  Widget _createImage() => Container(
    width: double.infinity,
    child: Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://img.freepik.com/free-vector/beautiful-gradient-spring-landscape_23-2148448598.jpg?size=626&ext=jpg&ga=GA1.2.1165998382.1610150400')),
  );

  Widget _createTitle() => SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 22.0),
          child: Row(
            //En una columna donde todo se ordena de forma vertical entonces usamos el CrossAxisAlignment, pero en un row el CrossAxisAlignment es horizontal para dar un orden a los Widgets hijos
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lake with the Moon', style: _title_style),
                    SizedBox(height: 5.0),
                    Text('Lake in Canadá', style: _subtitle_style),
                  ],
                ),
              ),
              Icon(Icons.star, color: Colors.indigoAccent, size: 30.0),
              Text('45', style: TextStyle(fontSize: 22.0))
            ],
          ),
        ),
      );

  Widget _createActions() => Container(
        padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 50.0),
        child: Row(
          //El MainAxisAlignment en una fila es la forma como se ordenan de manera horizontal
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _createAction('CALL', Icons.call),
            _createAction('ROUTES', Icons.whatshot_rounded),
            _createAction('SHARE', Icons.share)
          ],
        ),
      );

  Widget _createAction(String text, IconData icon) {
    return Column(children: [
      Icon(icon, size: 40.0, color: Colors.teal),
      Text(text, style: _action_text_style)
    ]);
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
        child: Text(
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
            textAlign: TextAlign.justify),
      ),
    );
  }
}
