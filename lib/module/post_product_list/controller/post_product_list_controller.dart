import 'package:flutter/material.dart';
import '../view/post_product_list_view.dart';

class PostProductListController extends State<PostProductListView> {
  static late PostProductListController instance;
  late PostProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  refresh() => setState(() {});
  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
