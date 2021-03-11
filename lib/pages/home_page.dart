import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/widgets/tabView.dart';
import 'settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.green[600],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search,
                color: Colors.green,
                size: 30,
              ),
            ),
            PopupMenuButton<Choice>(
                icon: Icon(
                  Icons.more_vert_sharp,
                  color: Colors.green,
                  size: 30,
                ),
                onSelected: null,
                itemBuilder: (BuildContext context) {
                  return choices.skip(0).map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Settings()),
                          );
                        },
                        child: Text(
                          choice.title,
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    );
                  }).toList();
                }),
          ],
        ),
        body: TabView(),
      ),
    );
  }
}

class Choice {
  const Choice({this.title});

  final String title;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'New Group'),
  const Choice(title: 'New broadcast'),
  const Choice(title: 'WhatsApp Web'),
  const Choice(title: 'Starred messages'),
  const Choice(title: 'Payments'),
  const Choice(title: 'Settings'),
];
