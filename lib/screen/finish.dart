import 'package:flutter/material.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/text.dart';
import 'package:mbti/common/ui.dart';
import 'package:share_plus/share_plus.dart';

class Finish extends StatelessWidget {
  const Finish({Key? key}) : super(key: key);

  String calculate() {

    Map<String, int> result = {
      'I' : 0,
      'N' : 0,
      'T' : 0,
      'J' : 0,
    };

    for (var index in Iterable<int>.generate(QUESTION_COUNT)) {
      String type = QUESTION_TYPE[Common.questionList[index]]!;
      if (Common.answers[index] == 1) {
        result[type] = result[type]! + 1;
      }
    }

    String A = result['I']! > 1 ? 'I' : 'E';
    String B = result['N']! > 1 ? 'N' : 'S';
    String C = result['T']! > 1 ? 'T' : 'F';
    String D = result['J']! > 1 ? 'J' : 'P';

    return A+B+C+D;
  }

  @override
  Widget build(BuildContext context) {

    String MBTI = calculate();
    print(MBTI);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 217, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 82, 16, 1.0),
        title: const Text('결과'),
      ),
      body: Center(
        child:
        Column(
          children: [
            UI.getPngFromPathNoAlign("assets/images/mbti/$MBTI.png", width: 130, height: 170),
            Container(height: 20,),
            Text(calculate()),
            Container(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                UI.button('다시 해보기',(){
                  Navigator.popUntil(context, (route) => route.isFirst);
                }),

                Container(width: 20,),

                UI.button('공유하기',(){
                  Share.share('나의 연애할때의 MBTI는? http://localhost:64540/#/');
                })

              ],
            )
          ],
        )


      ),
    );
  }
}