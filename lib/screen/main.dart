import 'package:flutter/material.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/ui.dart';
import 'package:mbti/screen/questions.dart';
import 'package:mbti/common/text.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 217, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 82, 16, 1.0),
        title: const Text('연애할 때 나의 MBTI 유형은?'),
      ),
      body: Center(
        child: Column(
          children: [
            UI.getPngFromPathNoAlign("assets/images/icon.png"),

            UI.button('알아보자!', (){
              Common.questionList = Iterable<int>.generate(QUESTION_COUNT).map((e) => e+1).toList()..shuffle();
              Common.answers = [0,0,0,0,0,0,0,0,0,0,0,0];

              print(Common.questionList);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Question(0)),
              );
            })

          ],
        )
      ),
    );
  }
}
