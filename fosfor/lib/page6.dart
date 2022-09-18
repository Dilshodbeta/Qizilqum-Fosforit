import 'package:flutter/material.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  State<page6> createState() => _page6State();
}

class _page6State extends State<page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rahbariyati"),
        backgroundColor: Color.fromARGB(255, 8, 12, 228),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('images/harakat.gif'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "Rahbariyat qabuli haqida Malumot kiritilmagan",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 145, 145),
    );
  }
}
