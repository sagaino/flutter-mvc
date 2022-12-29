import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import 'package:mvc/module/post_product_list/widget/post_product_items.dart';
import '../controller/post_product_list_controller.dart';

class PostProductListView extends StatefulWidget {
  const PostProductListView({Key? key}) : super(key: key);

  Widget build(context, PostProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PostProductList"),
        actions: const [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PostProductFormView(),
            ),
          );
          controller.refresh();
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: ProductService.products.length,
                itemBuilder: (context, index) {
                  var item = ProductService.products[index];
                  return PostProductItem(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<PostProductListView> createState() => PostProductListController();
}
