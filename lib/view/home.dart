import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicewtihapi/controller/home_controller.dart';
import 'package:practicewtihapi/models/home_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GetBuilder<HomeController>(builder: (context) {
          return homeController.loading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeController.list.length,
                  itemBuilder: (context, index) {
                    ResponseModel data = homeController.list[index];

                    return Card(
                      child: ListTile(
                        leading: Text(data.id.toString()),
                        title: Text(data.title.toString()),
                        subtitle: Text(data.body.toString()),
                      ),
                    );
                  });
        }));
  }
}
