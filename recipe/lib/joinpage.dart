import 'package:community/mainpage.dart';
import 'package:community/util/validatorutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';
import 'components/customelevatedbutton.dart';
import 'components/customtextformfield.dart';
import 'controller/user_controller.dart';
import 'loginpage.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  //UserController u=Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              height: 200,
              child: Text("회원가입 페이지",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ))),
          _joinForm()
        ],
      ),
    ));
  }

  Widget _joinForm() {
    TextEditingController idController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nicknameController = TextEditingController();

    return Form(
        key: _formKey,
        child: Column(children: [
          CustomTextFormField(
            controller: idController,
            hint: "ID",
            funValidator: ValidateID(),
          ),
          CustomTextFormField(
            controller: passwordController,
            hint: "Password",
            funValidator: ValidatePassword(),
          ),
          CustomTextFormField(
            controller: nicknameController,
            hint: "nickname",
            funValidator: Validatenickname(),
          ),
          CustomElevatedButton(
            text: "회원가입",
            funpageRoute: () {
              if (_formKey.currentState!.validate()) {
                //Get.to(MainPage());
                //u.join("fltk1004", "1234");
              }
            },
          ),
        ]));
  }
}

/*class JoinPage extends StatefulWidget{
  final _formKey=GlobalKey<FormState>();

  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.amber,
        ),
        title: GestureDetector(
          child: Text(
            '회원가입',
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
        key: _formKey,
        child: Column(
          children: [
            TextField(
              //controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ID',
              ),
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
            TextField(
              //controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'nickname',
              ),
              maxLines: 1,
              onChanged: (value){

              },
            ),
            ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){

                  }
                  showDialog(
                      context:context,
                      barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const Text("환영합니다!\n회원가입 되셨습니다."),
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
                  //Navigator.push(
                      //context, MaterialPageRoute(builder: (_) => MyLikeScreen()));

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
