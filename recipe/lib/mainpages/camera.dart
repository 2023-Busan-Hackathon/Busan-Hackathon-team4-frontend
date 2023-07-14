import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:community/mainpage.dart';
import 'dart:math';

class ShowGridScreen extends StatefulWidget{
  @override
  _ShowGridScreenState createState()=>_ShowGridScreenState();
}

class _ShowGridScreenState extends State<ShowGridScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            TextField(
              //controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '재료\n난이도 상/중/하 선택',
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
                child: Text("레시피 보기")
            ),
            TextField(
              //controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'chat gpt 답변',
              ),
              maxLines: 1,
              onChanged: (value){

              },
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: (){


                },
                child: Text("다른 레시피도 볼래요")
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: (){


                },
                child: Text("저장")
            ),
          ],
        ),
      ),
    );
  }
}