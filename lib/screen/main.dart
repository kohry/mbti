import 'package:flutter/material.dart';
import 'package:mbti/common/analytics.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/ui.dart';
import 'package:mbti/screen/finish.dart';
import 'package:mbti/screen/questions.dart';
import 'package:mbti/common/text.dart';
import 'package:share_plus/share_plus.dart';
import 'package:store_redirect/store_redirect.dart';

void main() {

  // Common.questionList = Iterable<int>.generate(QUESTION_COUNT).map((e) => e+1).toList()..shuffle();
  // Common.answers = [1,1,1,1,1,1,1,1,1,1,1,1,1];

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
        elevation: 0,
        title: Row(
          children: [
            UI.textA(' 기억나무', size: 30, color: Colors.white),
            Spacer(),
            GestureDetector(
                onTap: (){
                  ALog.log('click_download_start');
                  StoreRedirect.redirect(androidAppId: "com.music.couple.diary",
                      iOSAppId: "1550789824");
                },
                child:
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white12
                  ),
                  child: UI.textA('앱 다운로드', size: 20, color: Colors.white),
                )),
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
            UI.textA('나도 몰랐던 내 모습이 있다구!', size: 35),
            Spacer(),
            UI.getPngFromPathNoAlign("assets/images/icon.png", width: 300, height: 300),
            Container(height: 50,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      ALog.log('click_share_first');
                      Share.share('연애할때 나의 MBTI는?');
                    },
                    child:
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    color: Colors.white
                  ),
                  child: Icon(Icons.share, size: 20,color: Colors.black87,),
                )),
                Container(width: 40,),
              ],
            ),

            Container(height: 20,),
            UI.button('나를 알아보러 가기 :)', (){

              ALog.log('click_start');

              Common.questionList = Iterable<int>.generate(QUESTION_COUNT).map((e) => e+1).toList()..shuffle();
              Common.answers = [0,0,0,0,0,0,0,0,0,0,0,0];

              print(Common.questionList);

              Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => Question(0),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      return child;
                    },
                  )
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
