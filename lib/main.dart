import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment-3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var size = 20.0;
  var count = 1;
  var count2 = 3;
  var count3 = 1;
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
  ];

  final List<String> emoji = ['😑', '😊', '😄', '🤩'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Assignment-3',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        backgroundColor: colors[count2],
        body: Column(
          children: [
            // Font size Grower
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.blue[200],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Font Size Grower',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Hello',
                        style: TextStyle(fontSize: size),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (size == 60) {
                                  size = 60;
                                } else {
                                  size++;
                                }
                              });
                            },
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Colors.grey[300],
                            child: Text(
                              '${size}',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (size == 20) {
                                  size = 20;
                                } else {
                                  size--;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),

            //color change counter
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 500,
                color: colors[count % colors.length],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Color Change Counter',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            count++;
                            count2 = Random().nextInt(6);
                          });
                        },
                        child: Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),

            //Emoji Mood Counter
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 500,
                color: Colors.blue[200],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Emoji Mood Counter',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '${emoji[count3 - 1]}',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count3 == 4) {
                                  count3 = 4;
                                } else {
                                  count3++;
                                }
                              });
                            },
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Colors.grey[300],
                            child: Text(
                              '${count3}',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count3 == 1) {
                                  count3 = 1;
                                } else {
                                  count3--;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
