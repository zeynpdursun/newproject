import 'package:flutter/material.dart';
import 'package:staj_newproject/bottomnav.dart';
import 'package:staj_newproject/colors.dart';
import 'package:staj_newproject/drawer.dart';
import 'package:staj_newproject/login/login.dart';
import 'package:staj_newproject/login/register.dart';
import 'package:staj_newproject/page/cust.dart';
import 'package:staj_newproject/page/customscrolviewpage.dart';
import 'package:staj_newproject/page/homepage.dart';

void main() {
  runApp(const route());
}

class route extends StatefulWidget {
  const route({super.key});

  @override
  State<route> createState() => _routeState();
}

class _routeState extends State<route> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        tabBarTheme: TabBarTheme(

            //seçili olmayan renk yeşil TAB_LEARN.DART
            labelColor: Colorsitems().textcolor,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label),
        bottomAppBarTheme: BottomAppBarTheme(shape: CircularNotchedRectangle()),
        //textfied decoraitonu için
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => loginPage(),
        "/ki": (context) => register(),
        "/hme": (context) => bottomnav(),
        "/drawer": (context) => drawers(),
      },
    );
  }
}
