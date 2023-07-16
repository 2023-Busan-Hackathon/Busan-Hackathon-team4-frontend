
import 'package:community/domain/user/user_repository.dart';
import 'package:community/util/jwt.dart';
import 'package:get/get.dart';

/*class UserController extends GetxController{
  final UserRepository _userRepository=UserRepository();

  Future<void> join(String loginId, String password) async {
    var token=await _userRepository.join(loginId, password);
    //jwtToken=token;
    //print("jwtToken: $jwtToken");
  }
}*/

class UserControllerTwo extends GetxController{
  final UserRepositoryTwo _userRepositoryTwo=UserRepositoryTwo();

  Future<void> login(String loginId, String password) async {
    String token=await _userRepositoryTwo.login(loginId, password);
    jwtToken=token;
    print("jwtToken: $jwtToken");
  }
}
