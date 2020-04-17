import 'package:flutter/material.dart';


class NumButton extends StatelessWidget {
  NumButton({
    Key key,
    this.num,
  }) : super(key: key);

  final String num;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 69,
        width: 120,
        child: Center(
            child: FlatButton(
          onPressed: () {},
          color: Color(0xff1B6DAC),
          child:
              Text(num, style: TextStyle(fontSize: 20.0, color: Colors.white)),
        )));
    //color: Colors.green,
  }
}
