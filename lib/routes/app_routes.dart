import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/presentation/answer_page_screen/answer_page_screen.dart';
import 'package:van_vihar_quiz2/presentation/audio_question_page_screen/audio_question_page_screen.dart';
import 'package:van_vihar_quiz2/presentation/image_question_page_screen/image_question_page_screen.dart';
import 'package:van_vihar_quiz2/presentation/option_question_page_screen/option_question_page_screen.dart';
import 'package:van_vihar_quiz2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String answerPageScreen = '/answer_page_screen';

  static const String audioQuestionPageScreen = '/audio_question_page_screen';

  static const String imageQuestionPageScreen = '/image_question_page_screen';

  static const String optionQuestionPageScreen = '/option_question_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        answerPageScreen: AnswerPageScreen.builder,
        audioQuestionPageScreen: AudioQuestionPageScreen.builder,
        imageQuestionPageScreen: ImageQuestionPageScreen.builder,
        optionQuestionPageScreen: OptionQuestionPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AnswerPageScreen.builder
      };
}
