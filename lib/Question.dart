class Question
{
  String imagePath='';
  String questionText='';
  bool questionAnswer=false;

  Question({String p='',String t='',bool a=false})
  {
    imagePath=p;
    questionText=t;
    questionAnswer=a;
  }
}