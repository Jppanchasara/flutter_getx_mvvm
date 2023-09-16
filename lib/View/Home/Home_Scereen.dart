import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:getx_mvvm/Data/response/status.dart';
//import 'package:firebasenotification/notification_services.dart';

import 'package:getx_mvvm/View_Models/controller/Home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // //NotificationServices notificationServices = NotificationServices();
  // String tokenis = '';
  // FirebaseMessaging messaging = FirebaseMessaging.instance;
  // Future<String> getYourToken() async {
  //   String? token = await messaging.getToken();

  //   return token!;
  // }

  final homeController = Get.put(HomeController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('jayesh'),
        ),
        body: Obx(() {
          switch (homeController.rxRequestStatus.value) {
            case Status.LOADING:
              return Center(
                child: CircularProgressIndicator(),
              );
            case Status.COMPLETED:
              return ListView.builder(
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
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Reusebaltext(
                                      title: "ID :",
                                      value: homeController
                                          .userList.value.data![index].id
                                          .toString()),
                                  Reusebaltext(
                                      title: "Email :",
                                      value: homeController
                                          .userList.value.data![index].email
                                          .toString()),
                                  Reusebaltext(
                                      title: "FIrst Name:",
                                      value: homeController
                                          .userList.value.data![index].firstName
                                          .toString()),
                                  Reusebaltext(
                                      title: "Last Name:",
                                      value: homeController
                                          .userList.value.data![index].lastName
                                          .toString()),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            right: 65,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(homeController
                                      .userList.value.data![index].avatar
                                      .toString()),
                                ),
                              ),
                            ))
                      ],
                    );
                  });
            case Status.ERROR:
              return Center(
                child: Text('errror'),
              );
          }
          return SizedBox();
        }));
  }
}

// ignore: must_be_immutable
class Reusebaltext extends StatelessWidget {
  String title, value;
  Reusebaltext({required this.title, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
