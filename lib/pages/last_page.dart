import 'package:delivery/pages/last.dart';
import 'package:flutter/material.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();
  bool isError = false;
  bool view = true;

  void checkEmail(String text) {
    if (text.contains('@gmail.com')) {
      isError = false;
    } else {
      isError = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/deliver3.png",
              height: 300,
            ),
// const Spacer(),
            Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Signup",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Enter your details for new account",
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey.shade500, height: 2),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      autofocus: true,
                      focusNode: nameFocus,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) =>
                          FocusScope.of(context).requestFocus(emailFocus),
                      decoration: InputDecoration(
                          labelText: 'Name',
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade700))),
                    ),
                    TextField(
                      focusNode: emailFocus,
                      textInputAction: TextInputAction.next,
                      onSubmitted: (value) {
                        checkEmail(value);
                        FocusScope.of(context).requestFocus(passwordFocus);
                      },
                      decoration: InputDecoration(
                          labelText: 'Email',
                          errorText:
                              isError ? "Please enter valid email" : null,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade700))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                        textInputAction: TextInputAction.done,
                        focusNode: passwordFocus,
                        onSubmitted: (value) {
                          FocusScope.of(context).unfocus();
                        },
                        obscureText: view,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          counterText: "Forgot Password?",
                          helperStyle: const TextStyle(color: Colors.redAccent),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade700),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  view = !view;
                                });
                              },
                              icon: view
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility)),
                        )),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black87),
                      children: [
                    TextSpan(text: "By continuing you agree to our "),
                    TextSpan(
                        text: "Terms of Services",
                        style: TextStyle(color: Colors.green)),
                    TextSpan(text: " and "),
                    TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(color: Colors.green)),
                  ])),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 15),
              width: MediaQuery.of(context).size.width * 2 / 3,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.5),
                  color: Colors.redAccent.shade100,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 3)
                  ]),
              child: MaterialButton(
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width * 2 / 3,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Last(),
                        ),
                        (route) => false);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.5)),
                  child: const Text(
                    "Login Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
