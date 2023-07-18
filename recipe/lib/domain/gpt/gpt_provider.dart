import 'package:community/util/jwt.dart';
import 'package:get/get_connect/connect.dart';
import 'dart:io';
const host="http://172.30.1.58:8080";

//역할: 통신
/*class UserProvider extends GetConnect{
  //promise(데이터 약속)
  Future<Response> join(Map data)=>post("$host/join", data);
}*/


class GptProvider extends GetConnect {
  Future<Response> openAiGPT(Map data) async {

    Response response = await post("$host/ai", data, headers: {"Authorization": jwtToken ?? ""});
    return response;
  }

  Future<Response> getHistory() async {

    Response response = await post("$host/ai/history", null, headers: {"Authorization": jwtToken ?? ""});
    return response;
  }
}