import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<ProfilePage> createState() => _ProfilePageState();

}
class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
                left: 32.0,
                right: 32.0,
              ),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      child: Text(
                        "R",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      radius: 48.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ryan Newquist",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "ryan.newquist@geappliances.com",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(),
            Container(
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Account"), leading: Icon(Icons.account_circle),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("About"), leading: Icon(Icons.info),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Settings"), leading: Icon(Icons.settings),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Terms and Conditions"), leading: Icon(Icons.description),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Privacy Policy"), leading: Icon(Icons.announcement),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Other Information 1"), leading: Icon(Icons.more_vert),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Other Information 2"), leading: Icon(Icons.more_horiz),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Other Information 3"), leading: Icon(Icons.more),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Other Information 4"), leading: Icon(Icons.expand_more),))),
                    Card(child: InkWell(onTap: (){}, child: ListTile(title: Text("Other Information 5"), leading: Icon(Icons.unfold_more),))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}