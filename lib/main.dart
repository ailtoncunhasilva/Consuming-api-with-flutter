import 'package:flutter/material.dart';
import 'package:flutter_hero_list/data/api_manager.dart';
import 'package:flutter_hero_list/screens/heroesSuper_screen.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_hero_list/screens/super_heroes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ApiManager(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          cursorColor: Colors.purple[600],
          primarySwatch: Colors.blue,
          primaryColor: Colors.purple[600],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: HeroesSuperScreen(),
      ),
    );
  }
}
