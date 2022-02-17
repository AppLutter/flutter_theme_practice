import 'package:flutter/material.dart';

class HomePageDefault extends StatefulWidget {
  const HomePageDefault({Key? key}) : super(key: key);

  @override
  _HomePageDefaultState createState() => _HomePageDefaultState();
}

class _HomePageDefaultState extends State<HomePageDefault> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '시작 코드 혼자 짜보기',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('시작 코드 혼자 짜보기'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('현재 값은 : $count'),
                ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: const Text(
                    '증가',
                    style: TextStyle(fontSize: 25.0),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
