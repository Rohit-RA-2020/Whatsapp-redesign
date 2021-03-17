import 'dart:convert';
import "package:flutter/material.dart";
//import 'package:google_fonts/google_fonts.dart';

class CallDetails extends StatelessWidget {
  Widget headerList({
    @required String text,
    @required IconData icon,
    bool collapse = false,
  }) {
    return SizedBox();
  }

  Widget listConversation({
    @required Map element,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(90.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 52,
                    height: 52,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 5.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          element["user_img"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 55.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      element["user_name"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call_received,
                          size: 14,
                        ),
                        Text(
                          "10:90 AM 7th July                           ",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 55.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Icon(
                        Icons.phone_callback,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            indent: 70,
            color: Colors.lightGreen,
            thickness: 0.8,
          ),
        ],
      ),
    );
  }

  Future<List<Widget>> buildList(ThemeData theme, BuildContext context) async {
    List<Widget> currentList = [];
    List chats = [];

    await DefaultAssetBundle.of(context).loadString("assets/chats.json").then(
      (stringData) {
        chats = json.decode(stringData);
      },
    );
    for (Map element in chats) {
      currentList.add(this.listConversation(
        element: element,
      ));
    }
    return currentList;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 5.0,
        right: 5.0,
      ),
      child: FutureBuilder(
        future: this.buildList(theme, context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done)
            return ListView(
              children: snapshot.data,
            );
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: theme.primaryColor,
            ),
          );
        },
      ),
    );
  }
}
