import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'fourth_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/consumer.png"),
              const Text(
                " Enter your PhoneNumber",
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  keyboardType: TextInputType.phone,
                  maxLength: 7,
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp(r'\d'), allow: true)
                  ],
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                    counterText: '',
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    prefix: SizedBox(
                      width: 75,
                      child: Row(
                        children: [
                          Image.asset("assets/images/flag.png"),
                          const Text(
                            " +1",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    if (value.length == 7) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FourthPage(),
                        ),
                      );
                    } else if (value.length == 8) {
                      value = value.substring(0, 7) + value[7];
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 320,
              )
            ],
          ),
        ),
      ),
    );
  }
}
