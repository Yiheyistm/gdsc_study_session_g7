import 'package:flutter/material.dart';
import 'package:flutter_task_1/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(235, 236, 93, 26),
        body: Column(
          children: [
            Container(
              width: 400,
              color: Colors.transparent,
              child: Image.asset('images/stickman.png'),
            ),
            const SizedBox(
              height: 120,
            ),
            //Elevated button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 70),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => const SecondPage(),
                  ),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
