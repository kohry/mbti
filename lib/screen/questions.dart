import 'package:flutter/material.dart';
import 'package:mbti/common/analytics.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/ui.dart';
import 'package:mbti/screen/finish.dart';
import 'package:mbti/common/text.dart';
import 'dart:io';

class Question extends StatefulWidget {

  int level;

  Question(this.level);

  @override
  State<Question> createState() => QuestionWidgetState();
}


class QuestionWidgetState extends State<Question> {

  int? _answer = 1;
  bool _selected_1 = false;
  bool _selected_2 = false;

  Future sleep1() {
    return new Future.delayed(const Duration(milliseconds: 300), () => "1");
  }

  Route _createRoute() {

    Widget nextWidget = widget.level == QUESTION_COUNT - 1 ? Finish('') : Question(widget.level + 1);

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => nextWidget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }


  void goNext() {
    if (_answer != null) {

      ALog.log('click_next_question_' + widget.level.toString());
      ALog.log('choose_answer_' + _answer.toString());

      Common.answers[widget.level] = _answer!;

      Navigator.of(context).push(
          _createRoute()
      );

    }
  }

  @override
  Widget build(BuildContext context) {


    int index = Common.questionList[widget.level];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 217, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 82, 16, 1.0),
        elevation: 0,
        title: UI.textA('${widget.level+1} / 12', color: Colors.white, size: 35),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child:  Column(children: [
          Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: UI.textA(CustomTextSet.getQuestionText(index), size: 30),

          ),
          UI.container(
            ListTile(
              onTap: (){
                setState(() {
                _selected_1 = true;
                _selected_2 = false;

                _answer = 1;

                sleep1().then((value) {
                  goNext();
                });

                });
              },
                title: UI.textA(CustomTextSet.getAnswer1Text(index), color: _selected_1 ? Colors.white : Colors.black87),
              ),
               color: _selected_1 ? Color.fromRGBO(40, 82, 16, 1.0) : Colors.white54
            ),
          UI.container(
              ListTile(
                onTap: (){
                  setState(() {
                    _selected_1 = false;
                    _selected_2 = true;

                    _answer = 2;

                    sleep1().then((value) {
                      goNext();
                    });

                  });
                },
                title: UI.textA(CustomTextSet.getAnswer2Text(index), color: _selected_2 ? Colors.white : Colors.black87),
              ),
              color: _selected_2 ? Color.fromRGBO(40, 82, 16, 1.0) : Colors.white54
          ),
        ],)
        ),
    );
  }
}