import 'package:flutter/material.dart';
import 'package:mbti/common/text.dart';

class UI {

  static Widget button(String msg, Function callback, {Color color = const Color.fromRGBO(40, 82, 16, 1.0)}) {
    return GestureDetector(
      onTap: (){
          callback();
        },
      child:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: color,
        ),
      padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),

      child: UI.textACenter(msg, color: Colors.white)
    ));
  }

  static Text textA(String str, {Color color = Colors.black87, double size = 25, }) {
    return Text(str, style: TextStyle(fontFamily: LANG == 'ja' ? 'Maru' : 'Mini', fontSize: size * LANG_SIZE_MAPPING![LANG]!, color: color, decoration: TextDecoration.none));
  }

  static Text textACenter(String str, {Color color = Colors.black87, double size = 25, }) {
    return Text(str,textAlign: TextAlign.center, style: TextStyle( fontFamily: LANG == 'ja' ? 'Maru' : 'Mini', fontSize: size * LANG_SIZE_MAPPING![LANG]!, color: color, decoration: TextDecoration.none));
  }

  static Widget container(Widget widget, {Color color = Colors.white54}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: color
      ),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: widget);
  }

  static Widget getPngFromPathNoAlign(String str, {double width = 250, double height = 250}) {
    return Container(
        alignment: Alignment.center,

          width: width,
          height: height,
          margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                alignment: Alignment.center,

                // fit: BoxFit.fitWidth,
                  fit: BoxFit.scaleDown,
                  image: AssetImage(str,))
          ),
        ) ;
  }

}