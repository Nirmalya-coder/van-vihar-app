import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/presentation/option_question_page_screen/models/option_question_page_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the OptionQuestionPageScreen.
///
/// This provider manages the state of the OptionQuestionPageScreen, including the
/// current optionQuestionPageModelObj

// ignore_for_file: must_be_immutable
class OptionQuestionPageProvider extends ChangeNotifier {
  OptionQuestionPageModel optionQuestionPageModelObj =
      OptionQuestionPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
