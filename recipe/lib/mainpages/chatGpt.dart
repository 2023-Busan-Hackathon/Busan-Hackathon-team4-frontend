import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:community/mainpage.dart';
import 'dart:math';

import '../components/customelevatedbutton.dart';
import '../components/customtextformfield.dart';
import '../controller/dto/GptApiDto.dart';
import '../controller/gpt_controller.dart';
import '../util/validatorutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String markdownText = '''
      ### 음식 이름:\n- 김치볶음밥\n\n### 재료:\n- 김치\n- 밥\n- 당근\n- 양파\n- 소금\n- 식용유\n- 계란\n\n### 레시피:\n1. 김치, 당근, 양파를 잘게 썬다.\n2. 팬에 식용유를 두르고 중불에서 김치를 볶는다.\n3. 김치가 익으면 당근과 양파를 넣고 함께 볶는다.\n4. 밥을 추가하고 잘 섞어준다.\n5. 소금으로 간을 맞추고 잘 섞어준다.\n6. 계란을 푼 후 팬에 부어 전자면을 키고 저어가면서 익힌다.\n7. 김치볶음밥을 그릇에 담아 완성한다.\n\n*쉬운 난이도의 김치볶음밥 레시피입니다. 재료들 중에 제외하고 싶은 재료가 있다면 말씀해주세요!*\n
    ''';

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.amber[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Markdown(data: markdownText),
      ),
    );
  }
}

class ShowGridScreen extends StatefulWidget {
  @override
  _ShowGridScreenState createState() => _ShowGridScreenState();
}

class _ShowGridScreenState extends State<ShowGridScreen> {
  final _formKey = GlobalKey<FormState>();

  //세줄
  final GptController u = Get.put(GptController());
  final _ingredient = TextEditingController();
  final _difficulty = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            CustomTextFormField(
              controller: _ingredient,
              hint: "재료를 입력해주세요",
              funValidator: Validateingredient(),
            ),
            CustomTextFormField(
              controller: _difficulty,
              hint: "난이도 쉬움/중간/어려움 선택해주세요",
              funValidator: Validateingredient(),
            ),
            CustomElevatedButton(
              text: "레시피 추천",
              funpageRoute: () {
                // if(_formKey.currentState!.validate()){
                //   print(_ingredient.text.trim());
                //   print(_difficulty.text.trim());
                //
                //   u.openAiGPT(_ingredient.text.trim(),_difficulty.text.trim());
                // }
                print(_ingredient.text.trim());
                print(_difficulty.text.trim());

                u.openAiGPT(_ingredient.text.trim(), _difficulty.text.trim());
              },
            ),
            CustomElevatedButton(
              text: "레시피 불러오기",
              funpageRoute: () {
                u.getHistory();
              },
            ),

            // Container(
            //   padding: EdgeInsets.all(20),
            //   decoration: BoxDecoration(
            //     color:Colors.amber[300],
            //     borderRadius: BorderRadius.circular(10), //모서리를 둥글게
            // ),
            //   child:Text("assasa"),
            //
            // ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(gpt.gptResponse),
          ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {},
                child: Text("다른 레시피도 볼래요")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {},
                child: Text("저장")),
          ],
        ),
      ),
    );
  }

  Future<String> _fetch1() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Call Data';
  }
}
