import 'package:flutter/material.dart';
import '../view/listview_view.dart';

class ListviewController extends State<ListviewView> {
  static late ListviewController instance;
  late ListviewView view;

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