import 'package:flutter/material.dart';

import 'fifth_page.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  String code = '';
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter yor 4-digit code",
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 35,
            ),
            TextField(
              maxLength: 4,
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                  labelText: "Code",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  counterText: "Resend Code",
                  counterStyle: TextStyle(color: Colors.green)),
              obscureText: true,
              obscuringCharacter: '-',
              onChanged: (value) {
                code = value;
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const Spacer(),
                  FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FifthPage(),
                            ));
                      },
                      backgroundColor: Colors.redAccent.shade100,
                      elevation: 0,
                      focusColor: Colors.green,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 35,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
