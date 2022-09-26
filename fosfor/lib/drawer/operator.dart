import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class OperatorPage extends StatefulWidget {
  const OperatorPage({super.key});

  @override
  State<OperatorPage> createState() => _OperatorPageState();
}

class _OperatorPageState extends State<OperatorPage> {
  void _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'info@fosforite.uz',
    );
    String  url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print( 'Could not launch $url');
    }
  }

  _launchCaller() async {
    const url = "tel:792220057";   
    if (await canLaunch(url)) {
       await launch(url);
    } else {
      throw 'Could not launch $url';
    }   
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Image(image: AssetImage('images/operator.png')),
        ),
        Container(
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 7,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Aloqa uchun raqam:",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.green),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          _launchEmail();
                        },
                        child: Card(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Image(
                              height: 40,
                              width: 40,
                              image: AssetImage("images/email.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Email")
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          _launchCaller();
                        },
                        child: Card(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Image(
                              height: 40,
                              width: 40,
                              image: AssetImage("images/phone-call.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Telefon")
                    ],
                  ),
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}

