import 'package:flutter/material.dart';

class HomePageButtonCustom extends StatefulWidget {
  const HomePageButtonCustom({Key? key}) : super(key: key);

  @override
  _HomePageButtonCustomState createState() => _HomePageButtonCustomState();
}

class _HomePageButtonCustomState extends State<HomePageButtonCustom> {
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
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 30.0),
              ),
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFFA0AFFF),
              ),
              minimumSize: MaterialStateProperty.all(
                const Size(200, 100),
              ),
              elevation: MaterialStateProperty.all(20),
              shadowColor: MaterialStateProperty.all(
                const Color(0xFF9AB9FF),
              ),
            ),
          ),
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
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: const Text(
                    '증가',
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
