import 'package:community/controller/dto/GptApiDto.dart';
import 'package:community/domain/gpt/gpt_repository.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class GptController extends GetxController{
  final GptRepository _gptRepository=GptRepository();

  Future<GptApiDto?> openAiGPT(String ingredient, String difficulty) async {
    GptApiDto? gptApiDto = (await _gptRepository.openAiGPT(ingredient, difficulty));
    return gptApiDto; //null 값임 안 쓰는 값

  }

  Future<GptApiDto?> getHistory() async {
    GptApiDto? gptApiDto = (await _gptRepository.getHistory());
    return gptApiDto;
  }
}