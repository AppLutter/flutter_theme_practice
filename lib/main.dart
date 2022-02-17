import 'package:flutter/material.dart';
import 'package:theme_practice/home_page/home_page_text_custom/home_page_text_custom.dart';

import 'home_page/home_page_app_bar_custom/home_page_app_bar_custom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePageTextCustom();
  }
}
