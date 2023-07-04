import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:staj_newproject/login/register.dart';

import '../colors.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsitems().background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                maxRadius: 40,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colorsitems().backcolor,
                )),
            SizedBox(
              height: 10,
            ),
            Text("Yeni Kullanıcı",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white)),
            Text("Bireysel",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: projepadding.cardpadding,
              child: textfieldname(
                name: name,
                text: "Kullanıcı Adı",
                icon: Icons.person,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: projepadding.cardpadding,
              child: textfieldname(
                name: password,
                text: "ŞİFRE",
                icon: Icons.key_sharp,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/ki");
                },
                child: Text("KAYIT OL",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: Colors.white))),
            elevatedbtnnext(),
          ],
        ),
      ),
    );
  }
}

class textfieldname extends StatelessWidget {
  const textfieldname({
    super.key,
    required this.name,
    required this.text,
    required this.icon,
  });

  final TextEditingController name;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: name,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            iconColor: Colors.blue,
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.black),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(icon),
            hintText: "$text",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            )));
  }
}
