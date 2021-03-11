import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 45.0, top: 30.0),
          child: Text(
            'S E T T I N G S',
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  radius: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ROHIT RANJAN',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          'Hey there! I am using WhatsApp.',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Options(
              title: "ACCOUNT",
              desc: "Privacy, Security, Change number",
              icon: Icons.vpn_key,
            ),
            Options(
              title: "CHATS",
              desc: "Backup, History, Wallpaper",
              icon: Icons.message,
            ),
            Options(
                title: "NOTIFICATION",
                desc: "Message, Group and Call tones",
                icon: Icons.add_alert),
            Options(
              title: "HELP",
              desc: "FAQ, Contact Us, Privacy Policy",
              icon: Icons.help,
            ),
            Options(
              title: "INVITE A FRIEND",
              desc: "",
              icon: Icons.people,
            ),
          ],
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String title;
  final String desc;
  final icon;
  const Options({
    Key key,
    @required this.title,
    @required this.desc,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40,
          child: Icon(
            icon,
            size: 40,
            color: Colors.green,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  desc,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
