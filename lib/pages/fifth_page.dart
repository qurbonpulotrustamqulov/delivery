import 'package:flutter/material.dart';

import 'last_page.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
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
              "assets/images/deliver2.png",
              height: 300,
            ),
            // const Spacer(),
            Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Enter your login details and password",
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey.shade500, height: 2),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      onSubmitted: checkEmail,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LastPage(),
                        ));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black87),
                      children: [
                    TextSpan(text: "Don't have an account?"),
                    TextSpan(
                        text: "Create an account",
                        style: TextStyle(color: Colors.red))
                  ])),
            ),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
