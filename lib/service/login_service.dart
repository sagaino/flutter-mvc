import 'package:mvc/core.dart';

class LoginService {
  static List login = [];

  static addLogin(Map newLogin) async {
    login.add(newLogin);
    await DBService().saveLogin();
  }
}
