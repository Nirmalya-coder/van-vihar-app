import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/presentation/audio_question_page_screen/models/audio_question_page_model.dart';

/// A provider class for the AudioQuestionPageScreen.
///
/// This provider manages the state of the AudioQuestionPageScreen, including the
/// current audioQuestionPageModelObj
class AudioQuestionPageProvider extends ChangeNotifier {
  AudioQuestionPageModel audioQuestionPageModelObj = AudioQuestionPageModel();

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
