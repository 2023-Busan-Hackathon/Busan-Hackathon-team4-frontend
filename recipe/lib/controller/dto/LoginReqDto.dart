class LoginFormDto{
  final String? loginId;
  final String? password;
  //final String? nickname;

  LoginFormDto(this.loginId, this.password);

  Map<String,dynamic> toJson()=>{
    "loginId":loginId,
    "password":password,
    //"nickname":nickname,
  };
}