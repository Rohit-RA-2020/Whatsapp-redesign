import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Select Contact',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '7 Contacts',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.green,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.refresh,
              color: Colors.green,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.green,
              size: 30,
            )
          ],
        ),
        body: ListView(children: [
          Column(
            children: <Widget>[
              MenuBar(),
              Padding(padding: EdgeInsets.only(top: 20)),
              NewChatItem(name: "Alberta Hobbs"),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(name: "Aurelio Tomberlin"),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(name: "Corey Burgess"),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(name: "Daniel Respass"),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(name: "Gerard Vargas"),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(name: "Kasha Rorie"),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(name: "Jamie Patterson"),
            ],
          ),
        ]),
      ),
    );
  }
}

class NewChatItem extends StatelessWidget {
  const NewChatItem({
    Key key,
    @required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Container(
        height: 80,
        width: double.infinity,
        color: Color.fromARGB(0, 100, 99, 81),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage('https://thispersondoesnotexist.com/image'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  "Hey there! I am using Whatsapp",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.green[500],
                child: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.green[100],
                  child: Icon(
                    OMIcons.group,
                    color: Colors.green[600],
                    size: 43,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'New Group',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.green[500],
                child: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.green[100],
                  child: Icon(
                    OMIcons.personAdd,
                    color: Colors.green[600],
                    size: 43,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "New Contact",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
