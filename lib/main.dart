import 'package:flutter/material.dart';

import 'features/item_detail/fruit_detail_screen.dart';
import 'features/master/fruit_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FruitListScreen(),
      initialRoute: FruitListScreen.routeName,
      routes: {
        FruitListScreen.routeName: (context) => FruitListScreen(),
        FruitDetailScreen.routeName: (context) => FruitDetailScreen(),
      },
    );
  }
}
