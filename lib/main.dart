import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mbti/common/analytics.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/ui.dart';
import 'package:mbti/router/FloroRouter.dart';
import 'package:mbti/screen/finish.dart';
import 'package:mbti/screen/questions.dart';
import 'package:mbti/common/text.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {

  // Common.questionList = Iterable<int>.generate(QUESTION_COUNT).map((e) => e+1).toList()..shuffle();
  // Common.answers = [1,1,1,1,1,1,1,1,1,1,1,1,1];
  FRouter.setupRouter();
  runApp(MaterialApp(
    onGenerateRoute: FRouter.router.generator,
    title: '연애세포 MBTI',
    // home: FirstRoute(),
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
        backgroundColor: Color.fromRGBO(24, 77, 71, 1.0),
        elevation: 0,
        title: Row(
          children: [
            UI.textA('기억나무', size: 30, color: Colors.white),
            Spacer(),
            GestureDetector(
                onTap: (){
                  ALog.log('click_download_start');
                  // StoreRedirect.redirect(androidAppId: "com.music.couple.diary",
                  //     iOSAppId: "1550789824");

                  try {
                    launchUrlString("https://tree-memories.com/invite/mbti");
                  } on PlatformException catch(e) {
                    launchUrlString("https://tree-memories.com/invite/mbti");
                  }

                },
                child:
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10,5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white12
                  ),
                  child: UI.textA('앱 다운로드', size: 20, color: Colors.white),
                )),
            Container(width: 0,)
          ],
        )

      ),
      body: Center(child:
        Container(

        child:Column(
          children: [
            Container(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      ALog.log('click_share_first');
                      Share.share('https://tree-memories.com/invite/mbtitest');

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
                Container(height:10,width: 10,),
              ],
            ),

            UI.textA('연애할때 나의 MBTI는?', size: 40),
            UI.textA('나도 몰랐던 내 모습이 있다구!', size: 25),
            Spacer(),
            UI.getPngFromPathNoAlign("assets/images/icon.png", width: 200, height: 200),
            Spacer(),


            UI.button('나의 연애세포 측정하기 🧬', (){

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


            Container(height: 20,)

          ],
        )
    )
      ),
    );
  }
}
