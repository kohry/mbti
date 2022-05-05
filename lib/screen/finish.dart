import 'package:flutter/material.dart';
import 'package:mbti/common/analytics.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/text.dart';
import 'package:mbti/common/ui.dart';
import 'package:share_plus/share_plus.dart';
import 'package:store_redirect/store_redirect.dart';

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

    String mbti = calculate();
    print(mbti);

    ALog.log('mbti_result_' + mbti);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 217, 1.0),
      bottomSheet:GestureDetector(
          onTap: (){
            ALog.log('click_share_last');
            Share.share('결과공유');
          },
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            width: double.infinity,
        color: Color.fromRGBO(40, 82, 16, 1.0),
        child: UI.textACenter('결과 공유하기', size: 30, color: Colors.white)
      )),
      appBar:  AppBar(
          backgroundColor: Color.fromRGBO(40, 82, 16, 1.0),
          elevation: 0,
          title: Row(
            children: [
              UI.textA(' 기억나무', size: 30, color: Colors.white),
              Spacer(),
              GestureDetector(
                  onTap: (){
                    ALog.log('click_download_finish');
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
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        margin: EdgeInsets.fromLTRB(10, 10, 10, 50),
        child:
        Column(
          children: [
            UI.getPngFromPathNoAlign("assets/images/mbti/$mbti.png", width: double.infinity, height: 300),
            // UI.textA('연애할 때 나의 모습은..', size: 30),
            UI.textA(MBTI_TITLE[mbti] ?? '', size: 40),
            Container(height: 20,),

            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white54
              ),
              child: UI.textA('#' + mbti, size: 40),
            ),


            Container(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UI.textA('• ' + (MBTI_DESC[mbti]?[0] ?? ''), size: 30),
                Container(height: 10,),
                UI.textA('• ' + (MBTI_DESC[mbti]?[1] ?? ''), size: 30),
                Container(height: 10,),
                UI.textA('• ' + (MBTI_DESC[mbti]?[2] ?? ''), size: 30),
                Container(height: 10,),
                UI.textA('• ' + (MBTI_DESC[mbti]?[3] ?? ''), size: 30),
              ],
            ),
            Container(height: 50,),
            UI.button('테스트 다시 하기', (){
              ALog.log('click_retest');
              Navigator.popUntil(context, (route) => route.isFirst);
            }, color: Colors.black26),
            Container(height: 80,),

          ],
        )


      ),)
    );
  }
}

//
// Container(height: 20,),
// Text(MBTI),
// Container(height: 20,),
// Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
//
// children: [
//
// UI.button('다시 해보기',(){
// Navigator.popUntil(context, (route) => route.isFirst);
// }),
//
// Container(width: 20,),
//
// UI.button('공유하기',(){
// Share.share('나의 연애할때의 MBTI는? http://localhost:64540/#/');
// })
//
// ],
// )