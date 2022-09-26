import 'dart:ui';

import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
    
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('images/fosfarit uni.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
             height: 400,
                child: Text(
                  " Fosforit uni —  fosforitlardan kukun holida ishlab chiqariladi, tuproq nordonligini pasaytiradi, suvda erimaydi. Tarkibida oʻsimliklar qiyin oʻzlashtiradigan va CaCO3, CaJ2 aralashgan Ca3(PO4)2 shaklidagi 19—30% P2O5 bor. Nordon, botqoqi, qumlokli tuproqlarda qoʻllaniladi (bir necha yil taʼsir qiladi). Tuproqsagi kislota, mikroorganizmlar faoliyati, oʻsimliklar ildizi ajratadigan moddalar taʼsirida Fosforit uni tarkibidagi fosfor oʻsimliklar oʻzlashtira oladigan Sa(N2RO4)2N2O shakliga oʻtadi. Fosforit unini koʻpgina ekinlar uchun qoʻllash mumkin. Dukkakli ekinlarga yaxshi taʼsir qiladi. ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('images/konsentrat.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                  height: 100,
                child: Text(
                  " Fosfarit yuvilgan kuydirilgan konsentrati : Rudaning kuydirish natijasida fosfor konsentratsiyasi ortadi aynan shuning miqdori 26 foizgagacha ortagan mahsulot                                          ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Container(
                child: Image(
                  image: AssetImage('images/Muk.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                  height: 100,
                child: Text(
                  "  Yuvilgan quritilgan konsentrat  Fosfar besh oksidi miqdori 21 %          ",
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
