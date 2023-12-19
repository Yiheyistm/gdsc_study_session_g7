import 'package:flutter/material.dart';
import 'package:flutter_task_1/pages/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final List<String> _toDoLists = [
    "UI/UX App design",
    "UI/UX App design",
    "View Candidats",
    "Football Cup Drybling"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            icon:const Icon(Icons.arrow_back_ios_sharp)),
        title: const Text('Todo List'),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/stickman-1.png'),
          const Text(
            "Task Lists",
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Expanded(child: _listBuilder()),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 80),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 70),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 238, 98, 5),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contex) => const ThirdPage(),
                  ),
                );
              },
              child: const Text(
                'Create Task',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listBuilder() {
    return ListView.builder(
        itemCount: _toDoLists.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 6, top: 3, right: 6),
            child: Card(
              color: Colors.white,
              elevation: 4,
              child: ListTile(
                leading: Text(
                  _toDoLists[index][0],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                title: Text(
                  _toDoLists[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: Text(DateTime.timestamp().toString()),
              ),
            ),
          );
        });
  }
}
