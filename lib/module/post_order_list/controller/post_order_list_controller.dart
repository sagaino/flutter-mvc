import 'package:flutter/material.dart';
import '../view/post_order_list_view.dart';

class PostOrderListController extends State<PostOrderListView> {
  static late PostOrderListController instance;
  late PostOrderListView view;

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