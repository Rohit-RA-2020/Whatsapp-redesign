import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_redesign/pages/new_chat.dart';
import 'status_bar.dart';
import 'package:whatsapp_redesign/widgets/chat_item.dart';

class TabView extends StatefulWidget {
  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 2)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 210,
          centerTitle: true,
          title: Column(
            children: <Widget>[
              Text(
                "STATUS",
                style: GoogleFonts.kronaOne(
                  textStyle: TextStyle(
                    color: Colors.green,
                    letterSpacing: 1.0,
                    fontSize: 22,
                  ),
                ),
              ),
              StatusBar(),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicatorWeight: 5,
            tabs: [
              Tab(
                child: Text(
                  "C H A T S",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "C A L L S",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            controller: tabController,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Scaffold(
              body: Conversation(),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewChat()));
                },
                label: Text('New chat'),
                icon: Icon(Icons.message),
                backgroundColor: Colors.green,
              ),
            ),
            Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('New Call'),
                icon: Icon(Icons.call),
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
