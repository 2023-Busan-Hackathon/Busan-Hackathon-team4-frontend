import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './mainpages/board.dart';
import './mainpages/llmrose.dart';
import './mainpages/chatGpt.dart';
import 'loginpage.dart';
import 'testpage.dart';

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState()=>_MainPageState();
}

class _MainPageState extends State<MainPage>{
  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
      label:'로그인, 회원가입 페이지',
      icon:Icon(Icons.account_circle),
    ),
    BottomNavigationBarItem(
      label:'정해진 재료로 레시피 만드는 페이지',
      icon:Icon(Icons.book_outlined),
    ),
    BottomNavigationBarItem(
      label:'레시피 공유 페이지',
      icon:Icon(Icons.search),
    ),
    BottomNavigationBarItem(
      label:'마음에 드는 레시피 저장 페이지',
      icon:Icon(Icons.favorite_border),
    ),
  ];
  List pages=[
    LoginPage(),
    ShowGridScreen(),
    HomeScreen(),
    MyLikeScreen(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Get.to(TestPage());
          },
          child: Text(
            '"모먹을까"',
            style:TextStyle(
                fontFamily:'Lobster',
                fontSize:30,
                color:Colors.amber
            ),
          ),
        ),
        centerTitle:true,
        backgroundColor:Colors.white,
        /*actions: [
          IconButton(icon: Icon(Icons.account_circle,color:Colors.black12), onPressed:(){
            Navigator.push(
            context, MaterialPageRoute(builder: (_) => LoginPage()));
            },
          ),
        ],*/
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, //Bar의 배경색
        selectedItemColor: Colors.black, //선택된 아이템의 색상
        unselectedItemColor: Colors.grey.withOpacity(.60), //선택 안된 아이템의 색상
        selectedFontSize: 15, //선택된 아이템의 폰트사이즈 14
        unselectedFontSize: 10, //선택 안된 아이템의 폰트사이즈 10
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap:(int index){
          setState((){
            _selectedIndex=index;
          });
        },
        items:bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}

/*title: Text('Disorder-Rose',style:TextStyle(fontFamily:'Lobster',fontSize:30,color:Colors.black),),
centerTitle:true,
backgroundColor:Colors.white,*/