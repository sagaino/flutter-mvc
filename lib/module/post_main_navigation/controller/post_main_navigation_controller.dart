import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import '../view/post_main_navigation_view.dart';

class PostMainNavigationController extends State<PostMainNavigationView> {
  static late PostMainNavigationController instance;
  late PostMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PostLoginView()),
    );
  }
}
