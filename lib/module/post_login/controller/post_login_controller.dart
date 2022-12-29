import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import 'package:mvc/service/login_service.dart';
import '../view/post_login_view.dart';

class PostLoginController extends State<PostLoginView> {
  static late PostLoginController instance;
  late PostLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";

  doRegis() async {
    // if (email == "sagaino18@gmail.com" && password == "123123") {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => const PostMainNavigationView()),
    //   );
    // }
    var newLogin = {
      "email": email,
      "password": password,
    };

    await LoginService.addLogin(newLogin);
  }

  doLogin() async {
    var list = LoginService.login;

    final resEmail = list.any((element) => element["email"] == email);
    final resPassword = list.any((element) => element["password"] == password);
    if (resEmail == true && resPassword && true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PostMainNavigationView()),
      );
    }
  }
}
