import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import 'package:mvc/module/post_login/widget/custom_text_form_field.dart';
import '../controller/post_product_form_controller.dart';

class PostProductFormView extends StatefulWidget {
  const PostProductFormView({Key? key}) : super(key: key);

  Widget build(context, PostProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PostProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomTextFormField(
                title: "Produt Name",
                hintText: "input product name",
                onChanged: (value) => {
                  controller.productName = value
                },
              ),
              CustomTextFormField(
                title: "Price",
                hintText: "input price",
                keyboardType: true,
                onChanged: (value) => {
                  controller.price = double.parse(value)
                },
              ),
              CustomTextFormField(
                title: "Produt Description",
                hintText: "input product description",
                onChanged: (value) => {
                  controller.description = value
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PostProductFormView> createState() => PostProductFormController();
}
