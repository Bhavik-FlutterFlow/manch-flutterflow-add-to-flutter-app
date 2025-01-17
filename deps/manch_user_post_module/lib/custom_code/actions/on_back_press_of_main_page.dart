// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:suspension_bridge/suspension_bridge.dart';

Future onBackPressOfMainPage() async {
  // Add your function code here!
  SuspensionBridge().invokeMethod(
    'userPostModuleChannel',
    SuspensionBridgeMethod('backPressEvent'),
  );
}
