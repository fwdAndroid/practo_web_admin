import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practo_web_admin/authentication/widgets/utils.dart';
import 'package:practo_web_admin/database/database.dart';
import 'package:practo_web_admin/providers/circularprovider.dart';
import 'package:practo_web_admin/widgets/side_bar.dart';
import 'package:practo_web_admin/widgets/text_form_field.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailControler = TextEditingController();
    TextEditingController pass = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 366,
              width: 509.55,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/splash.png",
                      height: 72.73,
                      width: 254,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextFormInputField(
                        hintText: 'Email',
                        controller: emailControler,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextFormInputField(
                        isPass: true,
                        hintText: 'password',
                        controller: pass,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (emailControler.text.isEmpty && pass.text.isEmpty) {
                          Customdialog().showInSnackBar(
                              "Both Fields are Required", context);
                        } else if (emailControler.text.isEmpty) {
                          Customdialog().showInSnackBar(
                              "Email Field are Required", context);
                        } else if (pass.text.isEmpty) {
                          Customdialog().showInSnackBar(
                              "Password Field are Required", context);
                        } else if (pass.text.length < 5) {
                          Customdialog().showInSnackBar(
                              "Password minimum 5 charaters", context);
                        } else if (emailControler.text !=
                                'practo_admin@gmail.com' &&
                            pass.text != '123456') {
                          Customdialog().showInSnackBar(
                              "Email and password is wrong", context);
                        } else if (emailControler.text ==
                                'practo_admin@gmail.com' &&
                            pass.text == '123456') {
                          Customdialog.showDialogBox(context);
                          Provider.of<CircularProgressProvider>(context,
                                  listen: false)
                              .setValue(true);
                          Future.delayed(Duration(seconds: 0)).then((value) {
                            Database()
                                .login(emailControler.text, pass.text, context);
                          });
                        } else if (emailControler.text !=
                            'practo_admin@gmail.com') {
                          Customdialog()
                              .showInSnackBar("Email is wrong", context);
                        } else if (pass != '123456') {
                          Customdialog()
                              .showInSnackBar("Password is wrong", context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xff0DC6DF),
                          fixedSize: Size(300, 60)),
                      child: Provider.of<CircularProgressProvider>(context)
                                  .getValue ==
                              true
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircularProgressIndicator(
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Please wait...",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
