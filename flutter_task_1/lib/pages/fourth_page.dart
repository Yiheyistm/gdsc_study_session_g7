import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_sharp),
          style: IconButton.styleFrom(foregroundColor: Colors.amber[800]),
        ),
        title: const Text('Task Detail'),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/shopping-1.png'),
            const Text('Title'),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 223, 219, 219),
              ),
              width: 300,
              child: const Text('UI/UX App Design'),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text('Description'),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 223, 219, 219),
              ),
              padding: const EdgeInsets.all(10),
              width: 300,
              height: 100,
              child: const Text(
                  'First i have to animate the logo and prototyping my design. It\'s very important'),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text('Deadline'),
            Container(
              padding: const EdgeInsets.all(10),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 223, 219, 219),
              ),
              child: const Text('April 29, 2023'),
            ),
          ],
        ),
      ),
    );
  }
}
