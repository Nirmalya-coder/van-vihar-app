import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/presentation/answer_page_screen/models/answer_page_model.dart';

/// A provider class for the AnswerPageScreen.
///
/// This provider manages the state of the AnswerPageScreen, including the
/// current answerPageModelObj
class AnswerPageProvider extends ChangeNotifier {
  AnswerPageModel answerPageModelObj = AnswerPageModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
