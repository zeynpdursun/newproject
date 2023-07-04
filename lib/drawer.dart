import 'dart:math';

import 'package:flutter/material.dart';

import 'colors.dart';

class drawers extends StatelessWidget {
  const drawers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Stack(children: [
        Container(
          height: 80,
          color: Colorsitems().background,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 30,
                    ),
                  ),
                ),
                Text(
                  "Kullanıcı",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Colors.white),
                ),
                SizedBox(
                  width: 40,
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      shape: StadiumBorder(),
                      backgroundColor: Colors.white),
                  icon: Icon(
                    Icons.power_settings_new,
                    size: 30,
                    color: Colors.red,
                  ),
                  label: Text(
                    "Çıkış",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
