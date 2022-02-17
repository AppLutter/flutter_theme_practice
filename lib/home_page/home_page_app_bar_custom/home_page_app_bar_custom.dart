import 'package:flutter/material.dart';
import 'package:theme_practice/home_page/home_page_app_bar_custom/app_bar_custom_theme.dart';

class HomePageAppBarCustom extends StatefulWidget {
  const HomePageAppBarCustom({Key? key}) : super(key: key);

  @override
  _HomePageAppBarCustomState createState() => _HomePageAppBarCustomState();
}

class _HomePageAppBarCustomState extends State<HomePageAppBarCustom> {
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
        theme: appBarCustomTheme(),
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
