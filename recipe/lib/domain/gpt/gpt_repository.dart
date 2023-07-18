import 'package:community/controller/dto/GptApiDto.dart';
import 'package:community/controller/dto/GptApiFormDto.dart';
import 'package:community/domain/gpt/gpt_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../../controller/dto/LoginReqDto.dart';

class GptRepository{
  final GptProvider _gptProvider = GptProvider();

  Future<GptApiDto?> openAiGPT(String ingredient, String difficulty) async {
    GptApiFormDto gptApiFormDto= await GptApiFormDto(ingredient, difficulty);


    Response response = await _gptProvider.openAiGPT(gptApiFormDto.toJson());
    // print(response.body);
    //
    // String gptResponse_ = (response.body)["data"]['gptResponse'];
    // String food_ = (response.body)["data"]['food'];
    // String ingredient_ = (response.body)["data"]['ingredient'];
    // String recipe_ = (response.body)["data"]['recipe'];
    //
    // print("gpt 전체 응답 데이터: " + gptResponse_);
    // print("food: " + food_);
    // print("ingredient : " + ingredient_);
    // print("recipe: " + recipe_);
    // GptApiDto gptApiDto = GptApiDto(gptResponse_, food_, ingredient_, recipe_);
    //값 받기
    return null;
  }

  Future<GptApiDto?> getHistory() async {


    Response response = await _gptProvider.getHistory();
    //print(response.body);

    String gptResponse_ = (response.body)["data"]['gptResponse'];
    String food_ = (response.body)["data"]['food'];
    String ingredient_ = (response.body)["data"]['ingredient'];
    String recipe_ = (response.body)["data"]['recipe'];

    // print("gpt 전체 응답 데이터: " + gptResponse_);
    print("food: " + food_);
    print("ingredient : " + ingredient_);
    print("recipe: " + recipe_);
    GptApiDto gptApiDto = GptApiDto(gptResponse_, food_, ingredient_, recipe_);
    //값 받기
    return gptApiDto;
  }
}