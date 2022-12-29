import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:path_provider/path_provider.dart' as path;
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mvc/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    // final path = path.getApplicationDocumentDirectory();
    final path = await getTemporaryDirectory();
    // // Hive.init(path.path);
    // Hive.init(path);
    // final dir = await path.getApplicationDocumentsDirectory();
    // Hive.init(path.path);
    Hive.init(path.path);
    Hive.initFlutter();
  }
  // final path = path.getApplicationDocumentDirectory();
  // final dir = await path.getApplicationDocumentsDirectory();
  // // Hive.init(path.path);
  // Hive.init(dir.path);
  // Hive.initFlutter();
  await Hive.openBox('mainStorage');
  await Hive.openBox('loginStorage');

  DBService().load();
  DBService().loadLogin();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const PostLoginView(),
    );
  }
}
