import 'package:delivery/pages/home_page.dart';
import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  const Last({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: ListTile(
            title: const Text(
              "Thank you for using our delivery",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                  (route) => false);
            },
          ),
        ),
      ),
    );
  }
}
