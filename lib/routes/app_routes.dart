import 'package:chatgpt/presentation/home/controller/home_binding.dart';
import 'package:get/get.dart';
import '../presentation/chat/chat_screen.dart';
import '../presentation/chat/controller/chat_binding.dart';
import '../presentation/home/home_screen.dart';
import '../presentation/onbording/controller/binding.dart';
import '../presentation/splash_screen/controller/splash_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/onbording/onbording_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String onbordingScreen = '/onbordingScreen';
  static const String homeScreen = '/homeScreen';
  static const String chatScreen = '/chatScreen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String emptyConversationScreen = '/empty_conversation_screen';
  static const String startAConversationScreen = '/start_a_conversation_screen';
  static const String askAQuestionScreen = '/ask_a_question_screen';
  static const String bufferScreen = '/buffer_screen';
  static const String getAnAnswerScreen = '/get_an_answer_screen';
  static const String dashboardOneScreen = '/dashboard_one_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  // static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [SplashScreenBinding()],
    ),
    GetPage(
      name: onbordingScreen,
      page: () => OnbordingScreen(),
      bindings: [OnbordingBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [ChatBinding()],
    ),
  ];
}
