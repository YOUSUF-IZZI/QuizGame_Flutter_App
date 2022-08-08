import 'package:flutter/material.dart';
import 'Question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff607D8B),
        appBar: AppBar(
          title: Container(
            alignment: Alignment.center,
            child: Text(
              "اختبار",
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Color(0xff455A64),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<Widget> result = [];
  int counter=0;

 /* Question question1=Question(p: 'images/image-1.jpg',t: 'عدد كواكب المجموعة الشمسية 8',a: true);
  Question question2=Question(p: 'images/image-2.jpg',t: 'القطط هي حيوانات لاحمة',a: true);
  Question question3=Question(p: 'images/image-3.jpg',t: 'الصين موجودة في القارة الافريقية',a: false);
  Question question4=Question(p: 'images/image-4.jpg',t: 'الارض مسطحة وليست كروية',a: false);

  List<Question> quiz=[question1, question2, question3, question4];
  quiz.add(question3);*/


  List<Question> questions=[
    Question(p: 'images/image-1.jpg',t: 'عدد كواكب المجموعة الشمسية 8',a: true),
    Question(p: 'images/image-2.jpg',t: 'القطط هي حيوانات لاحمة',a: true),
    Question(p: 'images/image-3.jpg',t: 'الصين موجودة في القارة الافريقية',a: false),
    Question(p: 'images/image-4.jpg',t: 'الارض مسطحة وليست كروية',a: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: result,
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image(image: AssetImage(questions[counter].imagePath)),
              SizedBox(
                height: 20,
              ),
              Text(
                questions[counter].questionText,
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: ()
              {
                if(questions[counter].questionAnswer == true)
                {
                  setState(() {
                    result.add(Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.thumb_up,color: Colors.green),
                    ));
                    counter++;
                  });
                }
                else
                  setState(() {
                    result.add(Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.thumb_down,color: Colors.red),
                    ));
                    counter++;
                  });
              },
              child: Text(
                "صح",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                if(questions[counter].questionAnswer == false)
                {
                  setState(() {
                    result.add(Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.thumb_up,color: Colors.green),
                    ));
                    counter++;
                  });
                }
                else
                  setState(() {
                    result.add(Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(Icons.thumb_down,color: Colors.red),
                    ));
                    counter++;
                  });
              },
              child: Text(
                "خطأ",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

