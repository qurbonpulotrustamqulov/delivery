import 'package:delivery/pages/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/vegetables.png",
                    height: 300,
                  ),
                ],
              ),
            ),
            // const Spacer(),
            Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 45,
                    ),
                    const Text(
                      "Get your groceries on\nyour door step",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade700))),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Or connect with social media")],
                      ),
                    )
                  ],
                )),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Colors.white,
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
                              builder: (context) => const ThirdPage(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Sign in with Google",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                          Image.asset("assets/images/googlr.png")
                        ],
                      )),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.5),
                      color: Colors.lightBlue.shade900),
                  child: MaterialButton(
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width * 2 / 3,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.5)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Continue with FaceBook",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
