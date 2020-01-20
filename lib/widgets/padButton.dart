import 'package:calculator/models/PadStyle.dart';
import 'package:flutter/material.dart';

class PadButton extends StatefulWidget {
  PadButton({Key key, String this.text, this.appendNumber, this.reset, this.setCurrentOperation})
      : super(key: key);

  final String text;
  final appendNumber;
  final reset;
  final setCurrentOperation;

  @override
  _PadButtonState createState() => _PadButtonState();
}

class _PadButtonState extends State<PadButton> {
  PadStyle pickColor(x) {
    switch (x) {
      case '÷':
      case 'x':
      case '-':
      case '+':
      case '=':
        return PadStyle(backgroundColor: Colors.orange, color: Colors.white);
      case 'C':
      case '+/-':
      case '%':
        return PadStyle(backgroundColor: Colors.grey, color: Colors.black);
      default:
        return PadStyle(
            backgroundColor: Color.fromRGBO(102, 102, 102, 1),
            color: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FlatButton(
          onPressed: () {
            if (widget.text == 'C') {
              widget.reset();
            } else {
              widget.appendNumber(int.parse(widget.text));
            }
          },
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          splashColor: Colors.white,
          color: pickColor(widget.text).backgroundColor,
          colorBrightness: Brightness.light,
          child: Text(
            widget.text,
            style: TextStyle(
                color: pickColor(widget.text).color,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
      ),
    );
  }
}
