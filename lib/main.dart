import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ps_store/productsdetails.dart';
import 'package:ps_store/screens/allproducts.dart';
import 'allproducts.dart' as pros;
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.5
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
        routes: {
          '/products': (context) => Products(),
          // '/details': (context) => Details(),
        },
      ),
    );
  }
}
