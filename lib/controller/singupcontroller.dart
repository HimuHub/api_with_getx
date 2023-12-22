import 'package:get/get.dart';
import 'package:practicewtihapi/service/signup_service.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  SignupService signupService = SignupService();

  void postData(String name, String job) async {
    try {
      http.Response response = await signupService.postData(name, job);

      if (response.statusCode == 201) {
        print(response.body);
        print("signup succeful");
      }
    } catch (exception) {
      print("exception");
    }
  }
}
