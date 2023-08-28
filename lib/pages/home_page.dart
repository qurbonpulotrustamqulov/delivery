import 'package:delivery/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child: Image.asset("assets/images/firs_deliver.png")),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Get the fastest\nDelivery groceries at home",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Ger your groceries in as fast as one hour",
                    style: TextStyle(height: 2, fontSize: 16),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5),
                        color: Colors.red.shade300),
                    child: MaterialButton(
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width * 2 / 3,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondPage(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.5)),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.5),
                        color: Colors.lightGreen.shade700),
                    child: MaterialButton(
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width * 2 / 3,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.5)),
                      child: const Text(
                        "Log In",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
