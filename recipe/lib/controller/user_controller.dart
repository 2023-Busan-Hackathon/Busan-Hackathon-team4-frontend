
import 'package:community/domain/user/user_repository.dart';
import 'package:community/util/jwt.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  final UserRepository _userRepository=UserRepository();

  Future<void> join(String loginid, String password, String nickname) async {
    String token=await _userRepository.join(loginid, password, nickname);
    jwtToken=token;
    print("jwtToken: $jwtToken");
  }
}