import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Tutorial',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 60, left: 40, right: 40),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 128,
            width: 128,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: [
                  Color(0xFFF58524),
                  Color(0XFFF92B7F),
                ],
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("assets/bone.png"),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFF3C5A99),
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Login com Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("assets/fb-icon.png"),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
