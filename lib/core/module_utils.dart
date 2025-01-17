import 'package:flutter/cupertino.dart';
import 'package:manch_user_post_module/main.dart' as user_post_module;

Widget get userPostModuleWidget => user_post_module.MyApp();

Future<void> initNewModule() async {
  // Initialise the login module theme
  user_post_module.MyApp();
}
