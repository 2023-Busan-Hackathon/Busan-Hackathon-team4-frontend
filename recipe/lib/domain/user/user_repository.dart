import 'package:community/controller/dto/LoginReqDto.dart';
import 'package:community/domain/user/user_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

//통신을 호출해서 응답되는 데이터를 예쁘게 가공!! =>json =>dart오브젝트
/*class UserRepository{
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
}*/

class UserRepositoryTwo{
  final UserProviderTwo _userProviderTwo = UserProviderTwo();

  Future<String> loginUser(String loginId, String password) async {
    LoginFormDto loginReqDto=LoginFormDto(loginId, password);
    Response response= await _userProviderTwo.loginUser(loginReqDto.toJson());
    if (response.statusCode != 200) {
      throw Exception('로그인에 실패했습니다. 상태 코드: ${response.statusCode}');
    }
    print('토큰 반환 시도');
    String token = (response.body)["data"]['accessToken'];
    print("반환 토큰: " + token);

    return token;
  }
}