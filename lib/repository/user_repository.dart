import 'package:flutter_todos/fake_date/fake_data.dart';
import 'package:flutter_todos/model/user_model.dart';

class UserReposity {
  UserReposity();
  Future<List<User>> getAllProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    return FAKE_USER;
  }

  Future<User?> getUserById(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return FAKE_USER[id];
  }

  Future<List<User>> isUsernameValid(String username) async {
    await Future.delayed(const Duration(seconds: 1));

    return FAKE_USER;
  }

  Future<List<User>> isPasswordValid(String password) async {
    await Future.delayed(const Duration(seconds: 1));

    return FAKE_USER;
  }
}
