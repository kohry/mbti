import 'package:flutter/material.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/common/ui.dart';
import 'package:mbti/screen/finish.dart';
import 'package:mbti/common/text.dart';


class Question extends StatefulWidget {

  int level;

  Question(this.level);

  @override
  State<Question> createState() => QuestionWidgetState();
}


class QuestionWidgetState extends State<Question> {

  int? _answer = 1;
  bool _selected = false;

  @override
  Widget build(BuildContext context) {


    int index = Common.questionList[widget.level];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 248, 217, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(40, 82, 16, 1.0),
        title: Text('${widget.level+1} 번째 질문'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Center(
            child: Column(
              children: [
                Container(height: 20,),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                  child: UI.textA(CustomTextSet.getQuestionText(index), size: 30),

                ),


                UI.container(
                  ListTile(
                    onTap: (){
                      setState(() {
                        _selected = true;
                      });
                    },
                    title: UI.textA(CustomTextSet.getAnswer1Text(index)),
                    // leading: Radio<int>(
                    //   value: 1,
                    //   groupValue: _answer,
                    //   onChanged: (int? value) {
                    //     setState(() {
                    //       _answer = value;
                    //     });
                    //   },
                    // ),
                  ),
                  color: _selected ? Colors.black87 : Colors.white54
                ),

                Container(height: 5,),

                UI.container(
                  ListTile(
                    onTap: (){
                      setState(() {
                        _selected = true;
                      });
                    },
                    title: UI.textA(CustomTextSet.getAnswer2Text(index)),
                    // leading: Radio<int>(
                    //   value: 2,
                    //   groupValue: _answer,
                    //   onChanged: (int? value) {
                    //     setState(() {
                    //       _answer = value;
                    //     });
                    //   },
                    // ),
                  ),
                    color: _selected ? Colors.black87 : Colors.white54
                ),





                Container(height: 50,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    UI.button('이전으로',(){
                      Navigator.pop(context);
                    }),

                    Container(width: 15,),

                    UI.button('다음으로',(){

                      if (_answer != null) {

                        Common.answers[widget.level] = _answer!;

                        if (widget.level == QUESTION_COUNT - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Finish()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Question(widget.level + 1)),
                          );
                        }
                      }
                    }),

                  ],
                )


              ],
            )
        ),
      ) 
    );
  }
}