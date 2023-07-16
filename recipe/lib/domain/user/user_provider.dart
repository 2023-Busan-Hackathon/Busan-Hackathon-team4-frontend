
import 'package:get/get.dart';

const host="http://172.18.64.1:8080";

//역할: 통신
/*class UserProvider extends GetConnect{
  //promise(데이터 약속)
  Future<Response> join(Map data)=>post("$host/join", data);
}*/

class UserProviderTwo extends GetConnect{
  //promise(데이터 약속)
  Future<Response> login(Map data)=>post("$host/login", data);
}