import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> Widgets = [];
  int counter = 1;

  _MyAppState() {
    for (int i = 0; i < 20; i++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('List View'),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Widgets.add(Text(
                                'Ini adalah data ke ' + counter.toString(),
                                style: TextStyle(fontSize: 35)));
                            counter++;
                          });
                        },
                        child: Text('TAMBAH DATA')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Widgets.removeLast();
                            counter--;
                          });
                        },
                        child: Text('HAPUS DATA')),
                  ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: Widgets,
              )
            ],
          )),
    );
  }
}
