
import 'package:get/get.dart';

const host="http://172.30.1.23:8080";

//역할: 통신
/*class UserProvider extends GetConnect{
  //promise(데이터 약속)
  Future<Response> join(Map data)=>post("$host/join", data);
}*/

class UserProviderTwo extends GetConnect{
  //promise(데이터 약속)
  Future<Response> loginUser(Map data)=>post("$host/login", data);
}