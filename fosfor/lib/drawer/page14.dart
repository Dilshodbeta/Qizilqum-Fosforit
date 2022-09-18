import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fosfor/page2.dart';
import 'package:fosfor/page3.dart';
import 'package:fosfor/page4.dart';
import 'package:fosfor/page5.dart';
import 'package:url_launcher/url_launcher.dart';



class page14 extends StatefulWidget {
  const page14({super.key});

  @override
  State<page14> createState() => _page14State();
}

class _page14State extends State<page14> {
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
                  image: DecorationImage(image: AssetImage('images/N7.gif'),fit: BoxFit.cover)
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
                  
                
                child: Center(
                  child: Text(
                    'Joylashgan o\'rni',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
                ],
              ),
            
            
          
        
      );
  }
}