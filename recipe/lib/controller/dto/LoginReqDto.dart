class LoginReqDto{
  final String? loginid;
  final String? password;
  final String? nickname;

  LoginReqDto(this.loginid, this.password, this.nickname);

  Map<String,dynamic> toJson()=>{
    "loginid":loginid,
    "password":password,
    "nickname":nickname,
  };
}