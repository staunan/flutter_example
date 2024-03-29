import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:flutter_example/constants.dart';
import 'package:flutter_example/components/components.dart';
import 'package:flutter_example/components/CustomTextField.dart';
import 'package:flutter_example/pages/auth/welcome.dart';
import 'package:flutter_example/pages/home/home.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});
  static String id = 'page_login';

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  late String _email;
  late String _password;
  bool _saving = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.popAndPushNamed(context, PageWelcome.id);
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LoadingOverlay(
          isLoading: _saving,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const TopScreenImage(screenImageName: 'welcome.png'),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ScreenTitle(title: 'Login'),
                        CustomTextField(
                          textField: TextField(
                              onChanged: (value) {
                                _email = value;
                              },
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              decoration: kTextInputDecoration.copyWith(
                                  hintText: 'Email')),
                        ),
                        CustomTextField(
                          textField: TextField(
                            obscureText: true,
                            onChanged: (value) {
                              _password = value;
                            },
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            decoration: kTextInputDecoration.copyWith(
                                hintText: 'Password'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    signUpAlert(
                                      onPressed: () async {
                                      },
                                      title: 'RESET YOUR PASSWORD',
                                      desc: 'Click on the button to reset your password',
                                      btnText: 'Reset Now',
                                      context: context,
                                    ).show();
                                  },
                                  child: Text("Forgot Password?"),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Hero(
                                tag: 'login_btn',
                                child: CustomButton(
                                  buttonText: "Log In",
                                  width: 150,
                                  onPressed: () {
                                    Navigator.pushNamed(context, PageHome.id);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}