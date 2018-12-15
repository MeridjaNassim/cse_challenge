import 'package:flutter/material.dart';
import './event.dart';
import './ui/CustomInkWell.dart';
void main() => runApp(ChallengeEsi());

class ChallengeEsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Challenge CSE Mobile",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _navigateToDrawer(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Events()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: "Show Events",
          onPressed: () => _navigateToDrawer(context),
        ),
        title: Text("Profile"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Row(
                children: <Widget>[
                  Material(
                      type: MaterialType.circle,
                      elevation: 10,
                      color: Colors.white70,
                      child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.account_circle,
                            size: 70,
                            color: Colors.blue[200],
                          ))),
                  Column(
                    children: <Widget>[
                      Container(
                    //color: Colors.red,
                    margin: EdgeInsets.all(10),
                    child: Center(
                        child: Text(
                      "Nassim",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    )),
                  ),
                  Container(
                    //color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                        child: Text(
                      "Etudiant",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue[200]),
                    )),
                  ),
                    ],
                  )         
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: CustomInkWell(Icons.account_circle, "Profile", (){
                print('go to profile');
              }),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: CustomInkWell(Icons.calendar_today, "Event", () => _navigateToDrawer(context)),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: CustomInkWell(Icons.home, "Log out", (){
                print('go to profile');
              }),
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          constraints: BoxConstraints.expand(height: 300),
          child: Material(
            type: MaterialType.card,
            elevation: 10,
            borderRadius: BorderRadius.zero,
            color: Colors.blue[200],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    //color: Colors.red,
                    child: Center(
                        child: Material(
                      type: MaterialType.circle,
                      elevation: 10,
                      color: Colors.white70,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.account_circle,
                          size: 70,
                          color: Colors.blue[200],
                        ),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  child: Container(
                    //color: Colors.red,
                    child: Center(
                        child: Text(
                      "Nassim",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Container(
                    //color: Colors.red,
                    child: Center(
                      child: Text(
                        "Age : 19 | Etudiant à l'esi",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Container(
                constraints: BoxConstraints.expand(height: 200),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(50),
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            size: 100,
                          ),
                        )),
                    Container(
                        margin: EdgeInsets.all(50),
                        child: IconButton(
                          icon: Icon(Icons.message, size: 100),
                        ))
                  ],
                )))
      ]),
    );
  }
}
