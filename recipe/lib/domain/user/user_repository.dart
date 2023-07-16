import 'package:community/controller/dto/LoginReqDto.dart';
import 'package:community/domain/user/user_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공!! =>json =>dart오브젝트
class UserRepository{
  final UserProvider _userProvider = UserProvider();

  Future<void> join(String loginId, String password) async {
    LoginReqDto loginReqDto=LoginReqDto(loginId, password);
    /*print("============");
    print(loginReqDto.toJson());
    print("============");*/
    Response response= await _userProvider.join(loginReqDto.toJson());
    //dynamic body=response.body;
    //String token=body["authorization"];
    //return token;
    //print(response);
    /*print("============");
    print(response.body);
    print("============");
    print(response.headers);
    print("============");*/
  }
}

class UserRepositoryTwo{
  final UserProviderTwo _userProviderTwo = UserProviderTwo();

  Future<String> login(String loginId, String password) async {
    LoginReqDto loginReqDto=LoginReqDto(loginId, password);

    Response response= await _userProviderTwo.login(loginReqDto.toJson());
    print(response.body);
    print("============");
    print(response.headers);
    dynamic body=response.body;
    String token=body.data.accessToken;
    print("============");
    print(token);
    print("============");
    return token;

  }
}