import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/colors.dart';

class General_Exception_widget extends StatefulWidget {
  final VoidCallback OnPress;
  General_Exception_widget({required this.OnPress,super.key});

  @override
  State<General_Exception_widget> createState() =>
      _General_Exception_widgetState();
}

class _General_Exception_widgetState extends State<General_Exception_widget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: height * .15,
          ),
          const Icon(
            Icons.cloud_off,
            color: AppColor.secondarybuttoncolor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(child: Text('general_exception'.tr)),
          ),
          SizedBox(
            height: height * .05,
          ),
          InkWell(
            onTap: widget.OnPress,
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.primarybuttoncolor),
              child: Center(
                  child: Text(
                "Retry",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: AppColor.whitecolor),
              )),
            ),
          )
        ],
      ),
    );
  }
}
