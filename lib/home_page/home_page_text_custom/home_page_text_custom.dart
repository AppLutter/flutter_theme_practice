import 'package:flutter/material.dart';

import 'package:theme_practice/home_page/home_page_text_custom/text_custom_theme.dart';

class HomePageTextCustom extends StatefulWidget {
  const HomePageTextCustom({Key? key}) : super(key: key);

  @override
  _HomePageTextCustomState createState() => _HomePageTextCustomState();
}

class _HomePageTextCustomState extends State<HomePageTextCustom> {
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
      theme: textCustomTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('시작 코드 혼자 짜보기'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(builder: (context) {
                return Text(
                  '현재 값은 : $count',
                  style: Theme.of(context).textTheme.bodyText2,
                );
              }),
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
      ),
    );
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
