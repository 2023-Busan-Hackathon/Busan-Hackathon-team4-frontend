import 'package:dio/dio.dart';

const _API_PREFIX1 = "http://172.24.16.1:8080/test";
const _API_PREFIX2 = "https://jsonplaceholder.typicode.com/posts";

class Server{
Future<void> login() async {
  Response response;
  Dio dio = new Dio();
  Map<String, dynamic>data={"data":12,"message":"vidtorianoch!!!"};
  response=await dio.post(_API_PREFIX1, data:data);
  print(response.data.toString());
}

  Future<void> getReq() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get("$_API_PREFIX2/1");
    print(response.data.toString());
  }

  Future<void> postReq() async {
    Response response;
    Dio dio = new Dio();
    Map<String, dynamic>data={"id":12,"name":"vidtorianoch!!!"};
    data.putIfAbsent("userId", () => 189);
    response=await dio.post(_API_PREFIX2, data:data);
    print(response.data.toString());
  }

  Future<void> getReqWzQuery() async {
    Response response;
    Dio dio = new Dio();
    response=await dio.post(_API_PREFIX2, queryParameters:{
      "userId":1});
    print(response.data.toString());
  }
}

Server server=Server();