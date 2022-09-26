import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fosfor/drawer/operator.dart';
import 'package:fosfor/drawer/page10.dart';
import 'package:fosfor/drawer/page11.dart';
import 'package:fosfor/drawer/page12.dart';
import 'package:fosfor/drawer/page14.dart';
import 'package:fosfor/home_page.dart';
import 'package:fosfor/page6.dart';
import 'package:fosfor/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fosfor/Page1.dart';
import 'package:fosfor/page2.dart';
import 'package:fosfor/page3.dart';
import 'package:fosfor/page4.dart';
import 'package:fosfor/page5.dart';
import 'package:fosfor/page6.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawer/page8.dart';
import 'drawer/page9.dart';
import 'drawer/page10.dart';
import 'drawer/page11.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: fosfor()));
}

class fosfor extends StatefulWidget {
  const fosfor({Key? key}) : super(key: key);

  @override
  State<fosfor> createState() => _fosforState();
}

Future<void> _launchUrl() async {
  if (!await launchUrl(Uri.parse("https://goo.gl/maps/44jHh6bFYjb8YtJh7"))) {
    throw 'Could not launch ${Uri.parse("https://goo.gl/maps/44jHh6bFYjb8YtJh7")}';
  }
}

class _fosforState extends State<fosfor> {
  int _page = 0;
  final _pages = [HomePage(), page3(), page14(),OperatorPage()];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 163, 16),
        title: Text("Qizilqum fosforit kompliksi"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.language),
            color: Color.fromARGB(255, 59, 255, 62),
            splashColor: Colors.yellow,
          ),
        ],
        foregroundColor: Colors.black,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.shopping_cart_outlined, size: 30),
          Icon(Icons.add_location, size: 30),
          Icon(Icons.support_agent_rounded)
        ],
        color: Color.fromARGB(255, 7, 229, 44),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      drawer: new Drawer(
          child: new Drawer(
              // ignore: unnecessary_new
              child: new ListView(
        children: [
          Container(
            child: Image.asset("images/logo.png"),
          ),

          // ignore: unnecessary_new
          new ListTile(
            title: new Text("Murojjatlar"),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => page8());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.add),
          ),
          new ListTile(
            title: new Text("Mening Fikrim"),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => page9());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.emoji_objects),
          ),
          new ListTile(
            title: new Text("Qaror va Farmonlar"),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => page10());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.add),
          ),
          new ListTile(
            title: new Text("Tanlov va Elonlar"),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => page11());
              Navigator.push(context, route);
            },
            trailing: new Icon(Icons.add),
          ),
          new ListTile(
            title: new Text("Ishga kirish"),
            onTap: () {},
            trailing: new Icon(Icons.circle_sharp),
          ),
          new ListTile(
            title: new Text("Bog'lanish"),
            onTap: () {},
            trailing: new Icon(Icons.call),
          )
        ],
      ))),
      body: _pages[_page],
      backgroundColor: Colors.cyan,
    );
  }
}