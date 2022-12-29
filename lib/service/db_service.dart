import 'package:hive/hive.dart';
import 'package:mvc/core.dart';
import 'package:mvc/service/login_service.dart';

 late Box mainStorage;
 late Box loginStorage;

class DBService {
  //  late Box mainStorage;
   Box mainStorage = Hive.box('mainStorage');
   Box loginStorage = Hive.box('loginStorage');

  load() async {
    ProductService.products = await mainStorage.get("products") ?? [];
  }

  save() async {
    await mainStorage.put("products", ProductService.products);
  }
  loadLogin() async {
    LoginService.login = await loginStorage.get("login") ?? [];
  }

  saveLogin() async {
    await loginStorage.put("login", LoginService.login);
  }
}
