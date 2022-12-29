import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import '../controller/post_order_controller.dart';

class PostOrderView extends StatefulWidget {
  const PostOrderView({Key? key}) : super(key: key);

  Widget build(context, PostOrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PostOrder"),
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
  State<PostOrderView> createState() => PostOrderController();
}