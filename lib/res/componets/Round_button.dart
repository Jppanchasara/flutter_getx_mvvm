import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:getx_mvvm/res/colors/colors.dart';

class ReusebleButton extends StatefulWidget {
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback OnPress;
  final Color textcolor, buttoncolor;
  ReusebleButton(
      {required this.title,
      required this.OnPress,
      this.loading=false,
      this.buttoncolor = AppColor.primarybuttoncolor,
      this.textcolor = AppColor.whitecolor,
      this.height = 50,
      this.width = 200,
      super.key,
      });

  @override
  State<ReusebleButton> createState() => _ReusebleButtonState();
}

class _ReusebleButtonState extends State<ReusebleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.OnPress,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.buttoncolor, borderRadius: BorderRadius.circular(15)),
        child: Center(child:widget.loading==true? CircularProgressIndicator(color: Colors.white,):Text(widget.title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: widget.textcolor),)),
      ),
    );
  }
}
