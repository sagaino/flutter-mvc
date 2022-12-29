import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import '../controller/listview_controller.dart';

class ListviewView extends StatefulWidget {
  const ListviewView({Key? key}) : super(key: key);

  Widget build(context, ListviewController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview"),
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
  State<ListviewView> createState() => ListviewController();
}