import 'dart:async';

import 'package:flutter_todos/fake_date/fake_data.dart';
import 'package:flutter_todos/model/user_model.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }
const _delay = Duration(milliseconds: 800);

class AuthenticationRepository {
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
  }

  Future<bool> isUserIsExist(String email) async => Future.delayed(_delay, () {
        List users = FAKE_USER.where((user) => user.email == email).toList();
        if (users.length < 0) {
          throw new Exception("Email is not exist");
        }
        return true;
      });

  Future<UserModel> getUserByEmailAndPassword(
          String email, String password) async =>
      Future.delayed(_delay, () {
        List<UserModel> users = FAKE_USER
            .where((user) => user.email == email && user.password == password)
            .toList();
        if (users.length <= 0) {
          throw new Exception("Email is not exist");
        }
        return users[0];
      });

  Future<bool> isValidEmailAndPassword(String email, String password) async =>
      Future.delayed(_delay, () {
        List users = FAKE_USER.where((user) => user.email == email).toList();
        if (users.length > 0) {
          UserModel user = users[0];
          if (user.password != password) {
            throw new Exception("Password is incorrect");
          }
        } else {
          throw new Exception("Email is not exist");
        }
        return true;
      });
}
