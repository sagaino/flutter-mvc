import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import '../view/post_product_form_view.dart';

class PostProductFormController extends State<PostProductFormView> {
  static late PostProductFormController instance;
  late PostProductFormView view;

  String? productName;
  double? price;
  String? description;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doSave() async {
    var newProduct = {
      "photo":
          "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
      "productName": productName,
      "price": price,
      "description": description,
    };
    await ProductService.addProduct(newProduct);
    if (!mounted) return;
    Navigator.pop(context);
  }
}
