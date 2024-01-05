import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/presentation/image_question_page_screen/models/image_question_page_model.dart';
import '../models/imagequestionpage_item_model.dart';

/// A provider class for the ImageQuestionPageScreen.
///
/// This provider manages the state of the ImageQuestionPageScreen, including the
/// current imageQuestionPageModelObj

// ignore_for_file: must_be_immutable
class ImageQuestionPageProvider extends ChangeNotifier {
  ImageQuestionPageModel imageQuestionPageModelObj = ImageQuestionPageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
