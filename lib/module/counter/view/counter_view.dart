import 'package:flutter/material.dart';
import 'package:mvc/core.dart';
import '../controller/counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => CounterController();

  Widget build(context, CounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 80.0,
                child: ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    var item = controller.products[index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            "${item["photo"]}",
                          ),
                        ),
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["description"]}"),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
