import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import 'package:mvc/module/post_login/widget/custom_text_form_field.dart';
import '../controller/post_login_controller.dart';

class PostLoginView extends StatefulWidget {
  const PostLoginView({Key? key}) : super(key: key);

  Widget build(context, PostLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PostLogin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomTextFormField(
                title: "Email",
                hintText: "input email",
                initialValue: controller.email,
                onChanged: (value) => {controller.email = value},
              ),
              CustomTextFormField(
                title: "Password",
                hintText: "input password",
                initialValue: controller.password,
                // obscureText: true,
                onChanged: (value) => {controller.password = value},
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.doLogin();
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.upload),
                label: const Text("Regis"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.doRegis();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PostLoginView> createState() => PostLoginController();
}
