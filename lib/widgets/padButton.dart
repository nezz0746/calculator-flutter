import 'package:flutter/material.dart';

class PadButton extends StatefulWidget {
  PadButton({Key key, String this.text, this.appendNumber}) : super(key: key);

  final String text;
  final appendNumber;

  @override
  _PadButtonState createState() => _PadButtonState();
}

class _PadButtonState extends State<PadButton> {
  pickColor(x) {
    switch (x) {
      case '÷':
      case 'x':
      case '-':
      case '+':
      case '=':
        return Colors.orange;
      case 'AC':
      case '+/-':
      case '%':
        return Colors.grey;
      default:
        return Color.fromRGBO(102, 102, 102, 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FlatButton(
          onPressed: () {
            widget.appendNumber(int.parse(widget.text));
          },
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          splashColor: Colors.white,
          color: pickColor(widget.text),
          colorBrightness: Brightness.light,
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
      ),
    );
  }
}
