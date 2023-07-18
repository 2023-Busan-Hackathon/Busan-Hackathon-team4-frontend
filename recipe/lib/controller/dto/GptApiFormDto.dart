class GptApiFormDto{
  final String? ingredient;
  final String? difficulty;

  GptApiFormDto(this.ingredient, this.difficulty);

  Map<String,dynamic> toJson()=>{
    "ingredient":ingredient,
    "difficulty":difficulty,
  };
}