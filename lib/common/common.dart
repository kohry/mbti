import 'package:flutter/material.dart';
import 'package:mbti/common/text.dart';

class Common {
  static List<int> answers = [];
  static List<int> questionList = [];

  static String convertMBTIString(String text) {
    if (MBTI_TITLE.keys.contains(text.toUpperCase())) {
      return text.toUpperCase();
    } else {
      return 'default';
    }
  }

}