import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:practicewtihapi/models/home_model.dart';
import 'package:practicewtihapi/service/home_service.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  HomeService homeService = HomeService();
  List<ResponseModel> list = [];
  bool loading = false;

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

  void getdata() async {
    try {
      loading = true;
      update();
      http.Response result = await homeService.getData();

      if (result.statusCode == 200) {
        List<dynamic> datalist = jsonDecode(result.body);

        datalist.forEach((Value) {
          list.add(ResponseModel.fromJson(Value));
        });
        loading = false;
      }
      update();
    } catch (exception) {
      print('exception');
    }
  }
}
