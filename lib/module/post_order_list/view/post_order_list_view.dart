import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import '../controller/post_order_list_controller.dart';

class PostOrderListView extends StatefulWidget {
  const PostOrderListView({Key? key}) : super(key: key);

  Widget build(context, PostOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PostOrderList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<PostOrderListView> createState() => PostOrderListController();
}