import 'package:flutter/material.dart';
import 'package:flutter_task_1/pages/fourth_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create new task',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Main task name',
              style: TextStyle(
                color: Color.fromARGB(255, 248, 98, 52),
              ),
            ),
            const Card(
                color: Colors.white,
                elevation: 4,
                child: ListTile(
                  title: Text("UI/UX App Design"),
                )),
            const Text(
              'Due date',
              style: TextStyle(
                color: Color.fromARGB(255, 248, 98, 52),
              ),
            ),
            const Card(
                color: Colors.white,
                elevation: 4,
                child: ListTile(
                  title: Text("April 29, 2023 12:30 AM"),
                )),
            const Text(
              'Description',
              style: TextStyle(
                color: Color.fromARGB(255, 248, 98, 52),
              ),
            ),
            const Card(
                color: Colors.white,
                elevation: 4,
                child: ListTile(
                  title: Text('First i have to animate the logo and prototyping my design. It\'s very important'),
                )),
            Padding(
                 padding: const EdgeInsets.only( left: 80,top: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 40),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 248, 98, 52),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => const FourthPage(),
                    ),
                  );
                },
                child: const Text(
                  'Add task',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
