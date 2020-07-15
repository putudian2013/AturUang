import 'package:atur_uang/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(30.0)),
                new Icon(
                  Icons.attach_money,
                  size: 150.0,
                ),
                new Padding(padding: EdgeInsets.all(30.0)),
                new TextField(
                    decoration: new InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) => FocusScope.of(context).nextFocus()),
                new Padding(padding: EdgeInsets.all(10.0)),
                new TextField(
                  obscureText: !this._showPassword,
                  decoration: new InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.vpn_key),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: this._showPassword ? Colors.blue : Colors.grey,
                      ),
                      onPressed: () {
                        setState(
                            () => this._showPassword = !this._showPassword);
                      },
                    ),
                  ),
                ),
                new Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0)),
                new Container(
                  width: double.infinity,
                  height: 50.0,
                  child: new RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    child: new Text(
                      "Sign In",
                      style: new TextStyle(fontSize: 16.0),
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 30.0),
            child: new Row(
              children: <Widget>[
                new InkWell(
                  child: new Text(
                    "Register",
                    style: new TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  onTap: () {
                    sendData();
                  },
                ),
                Spacer(),
                new InkWell(
                  child: new Text(
                    "Forgot Password?",
                    style: new TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  onTap: () {
                    sendData();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void sendData() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("DIAN"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        }
    );
  }
}

