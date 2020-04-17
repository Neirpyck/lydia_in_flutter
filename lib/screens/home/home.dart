import 'package:flutter/material.dart';
//import 'package:lydia/screens/home/numButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String montant;

  @override
  void initState() {
    super.initState();
    montant = montant ?? '';
  }

  updateMontant(String val) {
    setState(() {
      if (montant.contains('.') && montant.length < 8) {
        montant += val;
      }
      if (montant.length < 5 && !montant.contains('.')) {
        montant += val;
      }
      if (montant.length == 5 && !montant.contains('.')) {
        montant += '.';
      }
    });
  }

  removeLastChar() {
    setState(() {
              print(montant.length);

      if (montant[montant.length - 2] == '.') {
        montant = montant.substring(0, montant.length - 2);
      } else if (montant.length > 1) {
          montant = montant.substring(0, montant.length - 1);
      }else{
        montant = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B6DAC),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),

          // Icon Row TOP
          Center(
            child: Container(
              height: 60,
              width: 290,
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 35,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.apps,
                      size: 35,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.explore,
                      size: 35,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.perm_identity,
                      size: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Separator
          Container(
            height: 1,
            width: 290,
            color: Colors.grey,
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),

          // Montant
          Container(
              height: 210,
              width: 290,
              //color: Colors.red,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //NumberDisplay(value: ansStr),
                    Text(
                      '$montant',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    Icon(Icons.euro_symbol, color: Colors.white, size: 45),
                  ],
                ),
              )),

          // Collecter/Payer
          Container(
            decoration: new BoxDecoration(
              color: Color(0xff134870),
              borderRadius: new BorderRadius.all(const Radius.circular(10)),
            ),
            width: 320,
            height: 60,
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 30, 10),
                    child: Text(
                      'Collecter',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    )),
                VerticalDivider(
                  color: Colors.grey,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(45, 10, 25, 10),
                    child: Text('Payer',
                        style: TextStyle(fontSize: 20.0, color: Colors.white))),
              ],
            ),
          ),

          // Numpad
          Container(
            margin: EdgeInsets.all(10),
            height: 280,
            width: 360,
            //color: Colors.red,
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: 69,
                        width: 120,
                        child: Center(
                            child: FlatButton(
                          onPressed: () => updateMontant('1'),
                          color: Color(0xff1B6DAC),
                          child: Text('1',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                        ))),
                    new Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    ),
                    Container(
                        height: 69,
                        width: 120,
                        child: Center(
                            child: FlatButton(
                          onPressed: () => updateMontant('4'),
                          color: Color(0xff1B6DAC),
                          child: Text('4',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                        ))),
                    new Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    ),
                    Container(
                        height: 69,
                        width: 120,
                        child: Center(
                            child: FlatButton(
                          onPressed: () => updateMontant('7'),
                          color: Color(0xff1B6DAC),
                          child: Text('7',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                        ))),
                    new Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    ),
                    Container(
                        height: 69,
                        width: 120,
                        child: Center(
                            child: FlatButton(
                          onPressed: () => updateMontant('.'),
                          color: Color(0xff1B6DAC),
                          child: Text(',',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                        ))),
                  ],
                ),
                Column(children: <Widget>[
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('2'),
                        color: Color(0xff1B6DAC),
                        child: Text('2',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                  new Container(
                    height: 1,
                    width: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('5'),
                        color: Color(0xff1B6DAC),
                        child: Text('5',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                  new Container(
                    height: 1,
                    width: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('8'),
                        color: Color(0xff1B6DAC),
                        child: Text('8',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                  new Container(
                    height: 1,
                    width: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('0'),
                        color: Color(0xff1B6DAC),
                        child: Text('0',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                ]),
                Column(children: <Widget>[
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('3'),
                        color: Color(0xff1B6DAC),
                        child: Text('3',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                  new Container(
                    height: 1,
                    width: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('6'),
                        color: Color(0xff1B6DAC),
                        child: Text('6',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                  new Container(
                    height: 1,
                    width: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Container(
                      height: 69,
                      width: 120,
                      child: Center(
                          child: FlatButton(
                        onPressed: () => updateMontant('9'),
                        color: Color(0xff1B6DAC),
                        child: Text('9',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white)),
                      ))),
                  new Container(
                    height: 1,
                    width: 100,
                    color: Colors.grey,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Container(
                    height: 69,
                    width: 120,
                    child: Center(
                        child: FlatButton(
                      onPressed: () => removeLastChar(),
                      child: Icon(
                        Icons.backspace,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
