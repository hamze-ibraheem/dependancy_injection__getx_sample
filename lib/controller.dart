import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Controller extends GetxController {
  void increament() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    int coding = (sharedPreferences.getInt('coding') ?? 0) + 1;
    print(coding);
    await sharedPreferences.setInt('coding', coding);
  }
}
