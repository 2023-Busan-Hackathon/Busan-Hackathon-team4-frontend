class LoginReqDto{
  final String? loginId;
  final String? password;
  //final String? nickname;

  LoginReqDto(this.loginId, this.password);

  Map<String,dynamic> toJson()=>{
    "loginId":loginId,
    "password":password,
    //"nickname":nickname,
  };
}