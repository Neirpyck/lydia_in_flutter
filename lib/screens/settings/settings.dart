import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B6DAC),
      body: ListView(children: <Widget>[

        // Card List
        Container(
          height: 590,
          child: ListView(
            children: <Widget>[
              // "Cartes internet"
              Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
                    child: Text('Cartes Internet',
                        style: TextStyle(color: Colors.white)),
                  )),

              // White Card
              Padding(
                padding: const EdgeInsets.all(10.0),
                // White Card
                child: Container(
                    height: 150,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10),
                          child: Row(children: <Widget>[
                            // Credit Card Icon
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  8.0, 8.0, 15.0, 8.0),
                              child: Icon(Icons.credit_card),
                            ),

                            Column(
                              children: <Widget>[
                                // Sans Contact + XX19
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Sans contact',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          6.0, 0, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                3.0, 1.0, 3.0, 1.0),
                                            child: Text('XX19'),
                                          )),
                                    ),
                                  ],
                                ),

                                // 21,00 + Solde Lydia
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 1.0, 0, 0),
                                  child: Text('21,00 € - Solde Lydia'),
                                ),
                              ],
                            ),
                          ]),
                        ),

                        // Separator
                        Container(
                          height: 1,
                          width: 3000,
                          color: Colors.grey,
                        ),

                        // Gérer Cartes
                        FlatButton(
                          child: Text(
                            'Gérer mes cartes Internet',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
