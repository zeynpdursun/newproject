import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:staj_newproject/bottomnav.dart';
import 'package:staj_newproject/drawer.dart';
import 'package:staj_newproject/login/register.dart';
import 'package:staj_newproject/sevices/user_services.dart';
import '../colors.dart';
import '../model/user_model.dart';
import 'homepage.dart';
import 'package:http/http.dart' as http;

class cust extends StatefulWidget {
  const cust({super.key});

  @override
  State<cust> createState() => _custState();
}

class _custState extends State<cust> {
  homerepo services = homerepo();
  List<Datum> users = [];

  // This widget is the root of your application.
  void initState() {
    super.initState();
    services.getHomecard().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          users = value.data;
        });
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawers(),
      backgroundColor: Colors.blue,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              leadingWidth: 110,
              expandedHeight: 300,
              leading: Builder(
                builder: (BuildContext context) {
                  return Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon:
                                Icon(Icons.person_2_rounded), // Drawer simgesi
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "Kullanıcı Adi",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: Colors.white),
                      ))
                    ],
                  );
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    width: double.maxFinite,
                    child: PageView(
                      children: [
                        cardhome(
                          text: "Sayım",
                        ),
                        cardhome(
                          text: "Bekleyen Sipariş",
                        ),
                        cardhome(
                          text: "Teslim Edilen ürün",
                        ),
                        cardhome(text: "Genel Ciro")
                      ],
                    ),
                  ),
                ),
              )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: ListTile(
                    title: Column(
                      children: [
                        Icon(Icons.arrow_drop_up_sharp),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Sipariş Listesi',
                            style: TextStyle(
                                fontSize: 24, color: Colorsitems().textcolor),
                          ),
                        ),
                        Divider(
                          color: Colorsitems().backcolor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Tarih",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colorsitems().textcolor),
                            ),
                            Text(
                              "Firma",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colorsitems().textcolor),
                            ),
                            Text(
                              "Tutar",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colorsitems().textcolor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "${users[index].firstName + users[index].lastName}"),
                        Text("${users[index].firstName}"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data")
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
