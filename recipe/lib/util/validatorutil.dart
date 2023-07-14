
import 'package:validators/validators.dart';

Function Validatenickname(){
  return (String? value){
    if(value!.isEmpty){
    return "공백이 들어갈 수 없습니다.";
    } else if(!isAlphanumeric(value)){
    return "닉네임에 한글이나 특수문자가 들어갈 수 없습니다";
    } else if(value.length>12){
    return "닉네임의 길이를 초과하였습니다.";
    } else{
    return null;
  }
};
}

Function ValidateID(){
  return (String? value){
    if(value!.isEmpty){
      return "공백이 들어갈 수 없습니다.";
    } else if(!isAlphanumeric(value)){
      return "아이디에 한글이 들어갈 수 없습니다";
    } else if(value.length>12){
      return "아이디의 길이를 초과하였습니다.";
    } else{
      return null;
    }
  };
}

Function ValidatePassword(){
  return (String? value){
    if(value!.isEmpty){
      return "공백이 들어갈 수 없습니다.";
    } else if(value.length>12){
      return "패스워드의 길이를 초과하였습니다.";
    } else{
      return null;
    }
  };
}