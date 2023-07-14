import 'package:community/controller/user_controller.dart';
import 'package:community/domain/user/user_repository.dart';
import 'package:community/joinpage.dart';
import 'package:community/mainpage.dart';
import 'package:community/mainpages/llmrose.dart';
import 'package:community/util/validatorutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/customelevatedbutton.dart';
import 'components/customtextformfield.dart';


class LoginPage extends StatelessWidget {
  final _formKey=GlobalKey<FormState>();
  UserController u=Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 200,
                  child:Text(
                      "로그인 페이지",
                      style:TextStyle(
                        fontSize:30,
                        fontWeight:FontWeight.bold,
                      )
                  )
              ),
              _loginForm()
            ],
          ),
        )
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
        child:Column(
            children:[
              CustomTextFormField(
                hint:"ID",
                funValidator: ValidateID(),
              ),
              CustomTextFormField(
                hint:"Password",
                funValidator: ValidatePassword(),
              ),
              CustomElevatedButton(
                text: "로그인",
                funpageRoute: (){
                  if(_formKey.currentState!.validate()){
                    //Get.to(MainPage());

                  }
                },
              ),
              CustomElevatedButton(
                text: "회원가입",
                funpageRoute: (){

                    Get.to(JoinPage());

                },
              ),
            ]
        )
    );
  }
}


/*class LoginPage extends StatefulWidget{
  final _formKey=GlobalKey<FormState>();
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
@override
Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    iconTheme: IconThemeData(
      color: Colors.amber,
    ),
    title: GestureDetector(
      child: const Text(
        '로그인',
        style:TextStyle(
            fontFamily:'Lobster',
            fontSize:30,
            color:Colors.amber
        ),
      ),
    ),
    centerTitle:true,
    backgroundColor:Colors.white,
  ),
  body: Container(
    child: Column(
      children: [
        TextField(
          //controller: titleController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'ID',
          ),
          maxLines: 1,
          onChanged: (value){

          },
        ),
        TextField(
          //controller: nameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'PASSWORD',
          ),
          maxLines: 1,
          onChanged: (value){

          },
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            child: Text("로그인"),
            onPressed:(){
              showDialog(
                context:context,
                  barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: const Text("환영합니다!\n로그인 되셨습니다."),
                      insetPadding: const  EdgeInsets.fromLTRB(0,80,0, 80),
                      actions: [
                        TextButton(
                          child: const Text('닫기'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  }
              );
              //Get.to(MyLikeScreen());
            }
        ),
        ElevatedButton(
            onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => JoinPage()));

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            child: Text("회원가입")
        )
      ],
    ),
  ),
);
}
}*/