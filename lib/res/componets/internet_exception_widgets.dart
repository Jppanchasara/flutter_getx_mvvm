import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/colors.dart';

class Internet_Exception_Widgets extends StatefulWidget {
  final VoidCallback onPress;
  Internet_Exception_Widgets({required this.onPress,super.key});

  @override
  State<Internet_Exception_Widgets> createState() =>
      _Internet_Exception_WidgetsState();
}

class _Internet_Exception_WidgetsState
    extends State<Internet_Exception_Widgets> {
  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height ;
  
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: height*.15,
          ),
          const Icon(
            Icons.cloud_off,
            color: AppColor.secondarybuttoncolor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(child: Text('internet_exception'.tr)),
          ),
          SizedBox(height: height*.05,),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.primarybuttoncolor
          
              ),
              child: Center(child: Text("Retry",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColor.whitecolor),)),
            ),
          )

        ],
      ),
    );
  }
}
