import 'package:flutter/material.dart';

class MyLikeScreen extends StatefulWidget{
  @override
  _MyLikeScreenState createState()=>_MyLikeScreenState();
}

class _MyLikeScreenState extends State<MyLikeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Image.asset('assets/image/b.jpg',width:200,height:200),
            TextField(
              //controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'nickname',
              ),
              onChanged: (value){

              },
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: (){



                },
                child: Text("못먹는 음식 설정")
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: (){


                },
                child: Text("저장된 레시피")
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: (){


                },
                child: Text("찜 레시피")
            ),
          ],
        ),
      ),
    );
  }
}