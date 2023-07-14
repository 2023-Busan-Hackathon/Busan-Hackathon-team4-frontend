
class User{
  final String? loginid;
  final String? password;
  final String? nickname;

  User({
    this.loginid,
    this.password,
    this.nickname
  });

  //통신을 위해서 json 처럼 생긴 문자열{"id":1}=>dart 오브젝트
  User.fromJson(Map<String, dynamic> json)
     :loginid=json["loginid"],
      password=json["password"],
      nickname=json["nickname"];
}