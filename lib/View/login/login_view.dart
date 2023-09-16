import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/Utils/utils.dart';
import 'package:getx_mvvm/View_Models/controller/login_controller.dart';
import 'package:getx_mvvm/res/componets/Round_button.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginVM = Get.put(LoginViewModel());
  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'.tr),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _fromkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: LoginVM.EmailController.value,
                      focusNode: LoginVM.emailFocusNode.value,
                      validator: (value) {
                        if (value!.isEmpty) {
                          utils.SnackBar('Email', 'Please enter your email');
                        }
                      },
                      onFieldSubmitted: (value) {
                        utils.filedFocusNode(
                            context,
                            LoginVM.emailFocusNode.value,
                            LoginVM.passwordFocusNode.value);
                      },
                      decoration: InputDecoration(
                          hintText: 'Email_hint'.tr,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: LoginVM.PasswordController.value,
                      focusNode: LoginVM.passwordFocusNode.value,
                      obscureText: true,
                      obscuringCharacter: "*",
                      validator: (value) {
                        if (value!.isEmpty) {
                          utils.SnackBar(
                              'Password', 'Please enter your Password');
                        }
                      },
                      onFieldSubmitted: (value) {
                        utils.filedFocusNode(
                            context,
                            LoginVM.emailFocusNode.value,
                            LoginVM.passwordFocusNode.value);
                      },
                      decoration: InputDecoration(
                          hintText: 'Password_hint'.tr,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                    ),
                  ],
                )),
            const SizedBox(
              height: 40,
            ),
            Obx(() => ReusebleButton(
                  buttoncolor: Colors.deepPurple,
                  loading: LoginVM.loading.value,
                  title: 'Login',
                  OnPress: () {
                    if (_fromkey.currentState!.validate()) {
                      LoginVM.loignApp();
                    }
                  },
                ))
          ],
        ),
      ),
    );
  }
}
