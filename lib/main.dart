import 'package:flutter/material.dart';
import 'package:getx_app1/views/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          scrollbarTheme: ScrollbarThemeData(
              isAlwaysShown: true,
              thickness: MaterialStateProperty.all(10),
              thumbColor: MaterialStateProperty.all(Colors.red[100]),
              radius: const Radius.circular(10),
              minThumbLength: 50)
      ),
      home: ShoppingPage(),
    );
  }
}

