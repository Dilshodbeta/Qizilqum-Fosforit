import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fosfor/page2.dart';
import 'package:fosfor/page3.dart';
import 'package:fosfor/page4.dart';
import 'package:fosfor/page5.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _launchUrl() async {
  if (!await launchUrl(Uri.parse("https://goo.gl/maps/44jHh6bFYjb8YtJh7"))) {
    throw 'Could not launch ${Uri.parse("https://goo.gl/maps/44jHh6bFYjb8YtJh7")}';
  }
}
  @override
  Widget build(BuildContext context) {
    return Container(
         decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('images/zavod.jpg'),fit: BoxFit.cover)
                  ),
        child: ListView(
          children: [
            Container(
              height: 800,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(104, 37, 10, 190),
                        padding: const EdgeInsets.all(30.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => page1());
                        Navigator.push(context, route);
                      },
                      child: const Text(
                        'Faolyati',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                         backgroundColor: Color.fromARGB(104, 37, 10, 190), 
                        padding: const EdgeInsets.all(30.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => page2());
                        Navigator.push(context, route);
                      },
                      child: const Text(
                        'Innovatsiya va ishlab chiqarish',
                          style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                         backgroundColor: Color.fromARGB(104, 37, 10, 190),
                        padding: const EdgeInsets.all(30.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => page3());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Mahsulotlari',
                          style: TextStyle(color: Colors.white),

                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                         backgroundColor: Color.fromARGB(104, 37, 10, 190),
                        padding: const EdgeInsets.all(30.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => page4());
                        Navigator.push(context, route);
                      },
                      child: Text(
                        'Rahbariyati',
                           style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(104, 37, 10, 190),
                  padding: const EdgeInsets.all(30.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => page5());
                  Navigator.push(context, route);
                },
                child: Text(
                  'Rasmlar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            
                ],
              ),
            ),
            
          ],
        ),
      );
  }
}