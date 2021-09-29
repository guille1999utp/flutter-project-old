import 'package:flutter/material.dart';
import 'package:solosyuliyyo/tarjetapage.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('TIENDA ROPA'),
            backgroundColor: Colors.red,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.yellow, Colors.orange, Colors.red],
                stops: [0.2, 0.5, 0.8],
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft,
              ),
            ),
            child: Center(
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: <Widget>[
                  TextField(
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintText: 'Nombre Completo',
                      icon: Icon(Icons.account_circle),
                    ),
                  ),
                  Divider(),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintText: 'Usuario',
                      icon: Icon(Icons.emoji_emotions_outlined),
                    ),
                  ),
                  Divider(),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintText: 'Correo Electronico',
                      icon: Icon(Icons.email_outlined),
                    ),
                  ),
                  Divider(),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      hintText: 'Contraseña',
                      icon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        child: Container(
                          width: 320,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/facebook.png'),
                                color: Colors.white,
                              ),
                              Text(
                                ' Facebook',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    FlatButton(
                      child: Container(
                        width: 320,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Image(
                              image: AssetImage('assets/gmail.png'),
                              color: Colors.white,
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(width: 10),
                            Text(
                              ' Gmail',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    )
                  ])
                ],
              ),
            ),
          ),
        ));
  }
}
