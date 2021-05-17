import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue),
            accountName: Text(
              "Boiko Andrii",
            ),
            accountEmail: Text("@dron1918"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i.imgur.com/BoN9kdC.png",
              ),
            ),
          ),
          DefaultTextStyle(
            style: TextStyle(color: Colors.amberAccent),
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text("154 reading"),
                        width: 90,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black45,
                          child: Text("15m readers"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text("Profile"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contact Us"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
