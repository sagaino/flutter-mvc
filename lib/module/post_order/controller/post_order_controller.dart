import 'package:flutter/material.dart';
import '../view/post_order_view.dart';

class PostOrderController extends State<PostOrderView> {
  static late PostOrderController instance;
  late PostOrderView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}