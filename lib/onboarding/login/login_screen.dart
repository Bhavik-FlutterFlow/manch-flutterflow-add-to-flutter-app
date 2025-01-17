import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:manch/onboarding/login/login_store.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController(text: "mikewilson@gmail.com");
  final TextEditingController _passwordController = TextEditingController(text: "Test@123");

  @override
  void initState() {
    super.initState();
    _loginStore.setEmail(_emailController.text);
    _loginStore.setPassword(_passwordController.text);
  }

  final LoginStore _loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const FlutterLogo(size: 100),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Login to Flutter'),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _emailController,
                onChanged: _loginStore.setEmail,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _passwordController,
                onChanged: _loginStore.setPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      _loginStore.login(context);
                    },
                    child: _loginStore.isLoading
                        ? const CircularProgressIndicator()
                        : const Text('Login'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
