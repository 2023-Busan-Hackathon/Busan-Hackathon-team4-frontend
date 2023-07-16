import 'package:community/controller/dto/LoginReqDto.dart';
import 'package:community/domain/user/user_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공!! =>json =>dart오브젝트
class UserRepository{
  final UserProvider _userProvider = UserProvider();

  Future<String> join(String loginid, String password, String nickname) async {
    LoginReqDto loginReqDto=LoginReqDto(loginid, password, nickname);
    /*print("============");
    print(loginReqDto.toJson());
    print("============");*/
    Response response= await _userProvider.join(loginReqDto.toJson());
    dynamic body=response.body;
    String token=body["authorization"];
    return token;
    //print(response);
    /*print("============");
    print(response.body);
    print("============");
    print(response.headers);
    print("============");*/
  }
}