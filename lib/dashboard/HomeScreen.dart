import 'package:flutter/material.dart';
import 'package:manch/core/module_utils.dart';
import 'package:suspension_bridge/suspension_bridge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                initNewModule();
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).push(
                  MaterialPageRoute(builder: (context) => userPostModuleWidget),
                );
                SuspensionBridge().registerMethodCallHandler(
                  'userPostModuleChannel',
                  (method) {
                    if (method.methodName == 'backPressEvent') {
                      Navigator.of(context, rootNavigator: true).pop();
                    }
                  },
                );
              },
              child: const Text('User Posts'),
            ),
          ],
        ),
      ),
    );
  }
}
