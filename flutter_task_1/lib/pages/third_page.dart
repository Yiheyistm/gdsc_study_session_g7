import 'package:flutter/material.dart';
import 'package:flutter_task_1/TodoList.dart';
import 'package:flutter_task_1/pages/animation_page.dart';
import 'package:flutter_task_1/pages/second_page.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lottie/lottie.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _title;
  late String _desc;
  late String _date = '';
  late DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
          ),
          style: IconButton.styleFrom(foregroundColor: Colors.amber[800]),
        ),
        title: const Text(
          'Create new task',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Lottie.asset('assets/animations/animations.json',
                        repeat: true,
                        fit: BoxFit.fill,
                        width: 300,
                        height: 300)),
                const Text(
                  'Main task name',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 98, 52),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _formTextField(expression: "Title", fieldType: "title"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Due date',
                  style: TextStyle(
                      color: Color.fromARGB(255, 248, 98, 52),
                      fontWeight: FontWeight.bold),
                ),
                Card(
                  elevation: 5,
                  surfaceTintColor: Colors.white,
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: _date.isEmpty ? 'Due Date' : _date,
                      contentPadding: const EdgeInsets.all(15),
                      border: InputBorder.none,
                    ),
                    onTap: () async {
                      date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050),
                      );
                      setState(() {
                        _date = Jiffy.parse(date.toString())
                            .format(pattern: 'yMMMMd');
                      });
                    },
                    validator: (value) {
                      if (_date.isEmpty) {
                        return "Date is required";
                      }
                      value = 'date is now not empty';
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 98, 52),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _formTextField(
                    expression: "Task Description", fieldType: "desc"),
                const SizedBox(height: 60),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 40),
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 248, 98, 52),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            todoLists.add(
                              TodoList(
                                  title: _title, desc: _desc, dateTime: _date),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) => const SecondPage(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'Add task',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 40),
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 9, 132, 247),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AnimationPage()));
                        },
                        child: const Text(
                          'View Animation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _formTextField({String expression = "", String fieldType = ""}) {
    return Card(
      elevation: 5,
      surfaceTintColor: Colors.white,
      child: TextFormField(
          decoration: InputDecoration(
            hintText: expression,
            contentPadding: const EdgeInsets.all(15),
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return "$expression can't be empty";
            }
            return null;
          },
          onSaved: (value) {
            if (fieldType.contains("title")) {
              _title = value!;
            } else if (fieldType.contains("desc")) {
              _desc = value!;
            }
          }),
    );
  }
}
