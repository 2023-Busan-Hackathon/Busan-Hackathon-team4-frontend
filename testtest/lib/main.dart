import 'dio_server.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton(
              onPressed: (){
                server.login();
              },
              child: Text("GET")
          ),
          ElevatedButton(
              onPressed: (){
                server.postReq();
              },
              child: Text("POST")
          ),
          ElevatedButton(
              onPressed: (){
                server.getReqWzQuery();
              },
              child: Text("GET WITH QUERY")
          ),
        ],
      ),
    );
  }
}

