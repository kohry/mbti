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
        backgroundColor: Color.fromRGBO(255,248,217,1.0),
        elevation: 0,
        title: Row(
          children: [
            UI.textA(' 기억나무', size: 30),
            Spacer(),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black12
              ),
              child: UI.textA('앱 다운로드', size: 20),
            ),
            Container(width: 10,)
          ],
        )

      ),
      body: Center(child:
        Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [
        //         Colors.blue,
        //         Colors.red,
        //       ],
        //     )
        // ),

        child: Column(
          children: [
            Container(height: 30,),
            UI.textA('연애할때 나의 MBTI는?', size: 50),
            UI.textA('나의 진짜 모습을 찾아보자!', size: 35),
            Spacer(),
            UI.getPngFromPathNoAlign("assets/images/icon.png", width: 300, height: 300),
            Container(height: 50,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    color: Colors.white
                  ),
                  child: Icon(Icons.share, size: 20,color: Colors.black87,),
                ),
                Container(width: 40,),
              ],
            ),

            Container(height: 20,),
            UI.button('나를 알아보러 가기 :)', (){
              Common.questionList = Iterable<int>.generate(QUESTION_COUNT).map((e) => e+1).toList()..shuffle();
              Common.answers = [0,0,0,0,0,0,0,0,0,0,0,0];

              print(Common.questionList);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Question(0)),
              );
            }),
            Container(height: 50,)

          ],
        )
    )
      ),
    );
  }
}
