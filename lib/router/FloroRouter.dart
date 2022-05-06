import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mbti/common/common.dart';
import 'package:mbti/main.dart';
import 'package:mbti/screen/finish.dart';

class FRouter {
  static FluroRouter router = FluroRouter();

  static void setupRouter() {

    print('setup');

    var detailHandler = Handler(handlerFunc: (context, parameters) {

      List<String>? params = parameters['mbti'];

      if (params != null && params.isNotEmpty) {

        String mbti = Common.convertMBTIString(params[0]);

        if(mbti == 'default') {
          return FirstRoute();
        } else {
          return Finish(parameters['mbti']![0]);
        }

      } else {
        return FirstRoute();
      }

    },);
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
          return FirstRoute();
        });
    router.define('/shared/:mbti', handler: detailHandler, transitionType: TransitionType.fadeIn);
  }

}
