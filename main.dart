import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ReverseTextApp(),
  ));
}

class ReverseTextApp extends StatefulWidget {
  @override
  ReverseTextAppState createState() => ReverseTextAppState();
}

class ReverseTextAppState extends State<ReverseTextApp> {
  final _textController = TextEditingController();

  String resultString = "";

  void onPressOfButton() {
    setState(() {
      resultString = _textController.text;
      resultString = String.fromCharCodes(resultString .runes.toList().reversed);// invierte texto
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Componente 1
          Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Texto',
                ),
                keyboardType: TextInputType.number,
              )),
          //Componente 2
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text(resultString, style: TextStyle(fontSize: 40.0))),
          //Componente 3
          Container(
              padding: EdgeInsets.all(16.0),
              child: RaisedButton(
                child: Text(
                  "Invierte",
                  style: TextStyle(color: Colors.red),
                ),
                color: Colors.green,
                onPressed: onPressOfButton,
              )),
        ],
      ),
    );
  }
}
