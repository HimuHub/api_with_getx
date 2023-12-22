import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicewtihapi/controller/singupcontroller.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  SignupController signupController = Get.put(SignupController());
  TextEditingController nameClt = TextEditingController();
  TextEditingController jobClt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: nameClt,
                  decoration: InputDecoration(
                    hintText: "Name",
                  ),
                ),
                TextField(
                  controller: jobClt,
                  decoration: InputDecoration(
                    hintText: "job",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      signupController.postData(
                          nameClt.text.toString(), jobClt.text.toString());
                    },
                    child: Text('signup'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
