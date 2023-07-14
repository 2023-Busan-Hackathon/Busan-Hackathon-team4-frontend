import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community/pages/postclick.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/createpostpage.dart';
import '../pages/postclick.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key:key);
  @override
  _HomeScreenState createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  CollectionReference product = FirebaseFirestore.instance.collection('posts');
  @override
  Widget build(BuildContext context){
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        StreamBuilder(
          stream: product.snapshots(),
          builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot> streamSnapshot){
          if(streamSnapshot.hasData){
            return ListView.builder(
              padding:const EdgeInsets.all(15),
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index){
                final DocumentSnapshot documentSnapshot=streamSnapshot.data!.docs[index];
                return Column(
                  children:[
                    GestureDetector(
                      onTap:(){
                        Get.to(PostClick());
                     },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color:Colors.amber[300],
                          borderRadius: BorderRadius.circular(10), //모서리를 둥글게
                        ),
                        child:ListTile(
                          title:Text(documentSnapshot['title']),
                          subtitle: Text(documentSnapshot['authorName']),
                        ),
                      ),
                    ),
                    Container(
                      height:10,
                    )
                  ],
                );
              },
            );
          }
          return CircularProgressIndicator();
          },
        ),
        /*GestureDetector(
          onTap: (){
            Get.to(CreatePostPage());
          },
          child: Container(
            margin: EdgeInsets.all(15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Colors.blueAccent,
            ),
            child: Icon(Icons.add),
          ),
        )*/

      ],
    );
  }
}