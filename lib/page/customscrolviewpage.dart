import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:staj_newproject/colors.dart';
import 'package:staj_newproject/drawer.dart';

import 'homepage.dart';

class custompage extends StatelessWidget {
  const custompage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawers(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
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
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Card(
                    color: Colors.white,
                    child: ListView(children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Sipariş Listesi',
                              style: TextStyle(fontSize: 24),
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
                                style: TextStyle(),
                              ),
                              Text("Firma"),
                              Text("Tutar")
                            ],
                          )
                        ],
                      ),
                    ]),
                  );
                },
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
