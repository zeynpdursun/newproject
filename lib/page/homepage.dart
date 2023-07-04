import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:staj_newproject/colors.dart';

import '../drawer.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _PageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsitems().background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("ds"),
      ),
      drawer: drawers(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
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
          Expanded(
            flex: 4,
            child: Card(
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
            ),
          ),
        ],
      ),
    );
  }
}

class cardhome extends StatelessWidget {
  const cardhome({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 70, right: 10, left: 10, bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colorsitems().textcolor,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('$text',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white)),
            Divider(
              color: Colors.white,
            ),
            Text(
              "Bekleyen Sipariş Adedi: 50",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.white),
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text("Sipariş Topamımı Gör",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
