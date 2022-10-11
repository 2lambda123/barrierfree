import 'package:can_do/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocabulary list',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Color(0xff323232),
      appBar: AppBar(
        title: Text('내 단어장'),
        titleTextStyle: TextStyle(
            fontFamily: 'Pretendard',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold),
        backgroundColor: Color(0xff323232),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Color(0xffF4E5C2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title[index],
                    style: const TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 51,
                  ),
                  SizedBox(
                    width: width,
                    child: Text(
                      date[index],
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

var title = [
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
];

var date = [
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
];
