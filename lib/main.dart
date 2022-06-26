import 'dart:io';

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

  FRouter.setupRouter();
  runApp(MaterialApp(
    onGenerateRoute: FRouter.router.generator,
    title: CustomTextSet.getText('TITLE'),
    // home: FirstRoute(),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);


  @override
  State<FirstRoute> createState() => FirstRouteState();

}


class FirstRouteState extends State<FirstRoute> {

  @override
  Widget build(BuildContext context) {

    try {
      if (LANG == 'default') {
        final Locale appLocale = Localizations.localeOf(context);
        String langString = appLocale.toString().substring(0,2);
        if (LANGUAGE_MAPPING.keys.contains(langString)) {
          LANG = langString;
        } else {
          LANG = 'ko';
        }

      }
    } catch (e,s) {
      LANG = 'ko';
    }


    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 217, 1.0),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(40, 82, 16, 1.0),
          elevation: 0,
          title: Row(
            children: [
              UI.textA(CustomTextSet.getText('APP_TITLE'), size: 30, color: Colors.white),
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
                    child: UI.textA(CustomTextSet.getText('DOWNLOAD'), size: 20, color: Colors.white),
                  )),
              Container(width: 0,)
            ],
          )

      ),
      body: Center(child:
      Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child:Column(
            children: [
              Container(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(height: 10,width: 10,),
                  DropdownButton<String>(
                    value: LANG,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black),
                    underline: Container(
                    ),
                    onChanged: (newValue) {
                      setState(() {

                        LANG = newValue ?? 'ko';


                      });
                    },
                    items: <String>['ko','ja','en']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(LANGUAGE_MAPPING[value]!),
                      );
                    }).toList(),
                  ),
                  Spacer(),
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

              UI.textA(CustomTextSet.getText('Q1'), size: 40),
              UI.textA(CustomTextSet.getText('Q2'), size: 25),
              Spacer(),
              UI.getPngFromPathNoAlign("assets/images/icon.png", width: 200, height: 200),
              Spacer(),


              UI.button(CustomTextSet.getText('BUTTON_GO'), (){

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