import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 30,
                    width: 200,
                    color: Colors.grey,
                    child: Text('not flexible'),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    color: Colors.green,
                    width: double.infinity,
                    child: Text(
                        'Mount Everest is a peak in the Himalaya mountain range. '
                        'It is located between Nepal and Tibet, an autonomous region of China. '
                        'At 8,849 meters (29,032 feet), it is considered the tallest point on Earth. '
                        'In the nineteenth century, the mountain was named after George Everest,'
                        ' a former Surveyor General of India.'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 200,
                    ),
                    Card(
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 200,
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            color: Colors.green,
                            width: double.infinity,
                            child: Text(
                                ' Mount Everest is a peak in the Himalaya mountain range. '
                                'It is located between Nepal and Tibet, an autonomous region of China. '
                                'At 8,849 meters (29,032 feet), it is considered the tallest point on Earth. '
                                'In the nineteenth century, the mountain was named after George Everest,'
                                ' a former Surveyor General of India.'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 30,
                    width: 200,
                    color: Colors.grey,
                    child: Text('not flexible and in center'),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
