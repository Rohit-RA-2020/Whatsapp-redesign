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
              NewChatItem(
                name: "Alberta Hobbs",
                imageurl:
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3f01db52-f675-48dc-9c91-f245d99f1486/d2nqynw-af694fd2-e1ba-4e9c-badb-630a48474599.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvM2YwMWRiNTItZjY3NS00OGRjLTljOTEtZjI0NWQ5OWYxNDg2XC9kMm5xeW53LWFmNjk0ZmQyLWUxYmEtNGU5Yy1iYWRiLTYzMGE0ODQ3NDU5OS5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.vgj19DpSqoncvBDutgwuXP6Z-UBL5sUaZDUlz-TNUiw",
              ),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(
                name: "Aurelio Tomberlin",
                imageurl:
                    "https://c8.alamy.com/comp/2E2HAN1/man-cartoon-making-love-and-peace-symbol-design-boy-male-person-people-human-and-social-media-theme-vector-illustration-2E2HAN1.jpg",
              ),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(
                name: "Corey Burgess",
                imageurl:
                    "https://i.thecartoonist.me/cartoon-portrait-of-man-with-glasses.png",
              ),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(
                name: "Daniel Respass",
                imageurl:
                    "https://lh3.googleusercontent.com/proxy/uY2lKiJnDvXZi2S1DucqnEnkreFfJGpofryHF4x1sh5Ep2K-ER5jNBgNjkTfXa7jGpQfnX3v2G5lkLU3ctxNUaNjtpKWi64BDjISC7lAmCg",
              ),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(
                name: "Gerard Vargas",
                imageurl: "https://i.thecartoonist.me/face-cartoon-man.png",
              ),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(
                name: "Kasha Rorie",
                imageurl:
                    "https://media.wired.com/photos/5a13e21d00f49e7e1c265637/master/pass/clowes_selfportrait.jpg",
              ),
              Divider(
                color: Colors.green,
                indent: 20,
                endIndent: 20,
              ),
              NewChatItem(
                name: "Jamie Patterson",
                imageurl: "https://thispersondoesnotexist.com/image",
              ),
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
    @required this.imageurl,
  }) : super(key: key);

  final String name;
  final String imageurl;

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
                backgroundImage: NetworkImage(imageurl),
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
