import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../View_Models/controller/Home_controller.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Obx(() {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: homeController.userList.value.data!.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 20),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          height: 150,
                          width: double.infinity,
                          child: Image.network(homeController
                              .userList.value.data![index].avatar
                              .toString())),
                    ),
                  ],
                );
              });
         
        }));
  }
}
