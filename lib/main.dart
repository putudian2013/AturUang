import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.menu),
        title: Text("Dashboard"),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Padding(padding: EdgeInsets.only(top: 30.0)),
                    new Text("This Month Balance"),
                    new Padding(padding: EdgeInsets.only(top: 10.0)),
                    new Text(
                      "IDR 20,000,000",
                      style: new TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    ),
                    new Row(
                      children: <Widget>[
                        new Container(
                            padding: EdgeInsets.only(top: 10.0),
                            height: 100,
                            width: (MediaQuery.of(context).size.width / 2) - 20,
                            child: Card(
                              shadowColor: Colors.green,
                              elevation: 5,
                              color: Colors.green[50],
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text("This Month Income"),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 5.0)),
                                  new Text(
                                    "IDR 30,000,000",
                                    style: new TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        new Container(
                            padding: EdgeInsets.only(top: 10.0),
                            height: 100,
                            width: (MediaQuery.of(context).size.width / 2) - 20,
                            child: Card(
                              shadowColor: Colors.red,
                              elevation: 5,
                              color: Colors.red[50],
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Text("This Month Expense"),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 5.0)),
                                  new Text(
                                    "IDR 10,000,000",
                                    style: new TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                    new Padding(padding: EdgeInsets.only(top: 10.0)),
                    new Container(
                      width: double.infinity,
                      height: 50.0,
                      child: new RaisedButton(
                        color: Colors.blue[300],
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child: new Text(
                          "View This Month Report",
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 10.0)),
                    new Divider(color: Colors.grey, height: 10.0),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard(),
                    new TransactionCard()
                  ],
                ),
              )),
        ],
      ),
    );
  }

  sendData() {}
}


class TransactionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(padding: EdgeInsets.only(top: 10.0)),
        new Container(
          width: double.infinity,
          height: 100.0,
          color: Colors.grey[200],
          child: new Column(
            children: <Widget>[],
          ),
        ),
      ],
    );
  }
}
