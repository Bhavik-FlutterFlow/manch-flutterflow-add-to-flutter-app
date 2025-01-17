// create a mobx for the login store
// https://x8ki-letl-twmt.n7.xano.io/api:GgvDRi3w/auth/login
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manch/api/api_service.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  bool isLoading = false;

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  Future<void> login(BuildContext context) async {
    isLoading = true;
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email and password are required'),
        ),
      );
      isLoading = false;
      return;
    }
    try {
      final response = await ApiService.post('auth/login', {
        'email': email,
        'password': password,
      });

      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      }
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to login'),
          ),
        );
      }
    } finally {
      isLoading = false;
    }
  }
}
