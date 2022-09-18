import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fosfor/page2.dart';
import 'package:fosfor/page3.dart';
import 'package:fosfor/page4.dart';
import 'package:fosfor/page5.dart';
import 'package:url_launcher/url_launcher.dart';



class page12 extends StatefulWidget {
  const page12({super.key});

  @override
  State<page12> createState() => _page12State();
}

class _page12State extends State<page12> {
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
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(104, 37, 10, 190),
                  padding: const EdgeInsets.all(30.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: _launchUrl,
                  
                
                child: Text(
                  'Joylashgan o\'rni',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
                ],
              ),
            
            
          
        
      );
  }
}