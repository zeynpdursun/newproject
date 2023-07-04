import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../colors.dart';
import 'login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController idname = TextEditingController();
  TextEditingController idpassword = TextEditingController();

  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
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
              height: 20,
            ),
            Text("KAYIT EKRANI",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: projepadding.cardpadding,
              child: textfieldname(
                name: idname,
                text: "Ad",
                icon: Icons.person,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: projepadding.cardpadding,
              child: textfieldname(
                name: surname,
                text: "Soyad",
                icon: Icons.person_pin_sharp,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: projepadding.cardpadding,
              child: textfieldname(
                name: email,
                text: "E-mail",
                icon: Icons.email,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: projepadding.cardpadding,
              child: textfieldname(
                name: idpassword,
                text: "Şifre",
                icon: Icons.key_sharp,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            elevatedbtnnext()
          ],
        ),
      ),
    );
  }
}

class elevatedbtnnext extends StatelessWidget {
  const elevatedbtnnext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/hme");
      },
      child: Text("DEVAM"),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colorsitems().backcolor,
          minimumSize: Size(350.0, 50.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
