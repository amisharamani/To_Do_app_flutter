import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home:
  ToDoListApp(),),);
}
class ToDoListApp extends StatefulWidget {
  const ToDoListApp({Key? key}) : super(key: key);
  @override
  State<ToDoListApp> createState() => _ToDoListAppState();
}
class _ToDoListAppState extends State<ToDoListApp> {
  int time = 8;
  var st = "AM";
  var i = 0;
  var a = [];
  var c = [];
  bool b = false;
  @override
  Widget build(BuildContext context) {
    int m = 9;
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do App"),
        actions: const [
          Icon(Icons.apps_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.orange.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...a
                  .map(
                    (e) => Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: (m++ < 12)
                              ? Text("${e}:00 \n AM")
                              : (24 >= m)
                              ? Text("${e}:00 \n PM")
                              : Text("${e}:00 \n AM"),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 7),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Enter yuor To-Do here...",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
                  .toList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (time < 12) {
              time++;
            } else {
              time = (time + 1) % 12;
            }
            if (m == 33) {
            } else {
              a.add(time);
            }
          });
        },
        backgroundColor: Colors.orange.shade900,
        child: const Icon(Icons.add),
      ),
    );
  }
}