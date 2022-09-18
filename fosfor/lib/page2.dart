// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kiritilishi mumkin bo'lgan innovastion g'oyalar"),
        backgroundColor: Color.fromARGB(255, 8, 12, 228),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('images/N4.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  " 1)  Fosfarit qatlamlarni ochish jarayonida hosil bo'ladigan qoldiq massalarni qayta ishlash . Jarayon ushbu tog' jinslaridan maydalanib biriktiruvchi moddalar yordamida nihollar uchun mahsus stakanlar yasashdan iborat bo'ladi. Ushbu usulda o'gitli idishlar yaratish undan tashqari yirikroq ko'chatlar uchun ham shunday  idishlar yaratish mumkin . Undan tashqari tuprog' unumdorligi  kam bo'lgan hududlarda yiriqroq shunaday idishlardan foydalangan holda ekinlar yetishtirish mumkin bo'ladi. ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 0, 29), fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('images/N3.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  " Yuqoridagi rasmda O'g'itli stakanlar rasmi berilgan. Uning avzaligi yerga nihol  ekilgandan so'ng uyerga o'g'it bo'lib ketadi. ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 0, 29), fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('images/N2.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  " 2)   Tog’ kon ishlarida  jarayonni boshqarishda, makshederlik ishlarini  sifatli va tez bajarishda dronlardan foydalanish ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 0, 29), fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('images/N1.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  " 3) Sanoat Turizmini Rivojlantirish.  Tog’ jinslar ag’darmalar mavjud hududdan xavfsiz sayyohlik uchun mahsus maydoncha tayyorlash   va cho’kindi qatlamlar orasida uchraydigan qadimiy organizlar tosh qotgan namunalaridan iborat kichik markaz tashkil etishdan iborat.   Tashkilot uchun foydali"
                  " tarafi faqat sayyohlar kelishi  emas  balki uni kengroq miqyosida  targ’ib etgan holda investetsiya oqimini oshirishdan iborat bo’ladi.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 0, 29), fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage('images/N5.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  " 4) Korxona rivojida  Mobil ilovalardan kengroq foydalanish va Mobil ilovalar yaratish ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 0, 29), fontSize: 20),
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 145, 145),
    );
  }
}
