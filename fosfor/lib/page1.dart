import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faolyati"),
        backgroundColor: Color.fromARGB(255, 8, 12, 228),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('images/faolyati.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text("Qizilqum fosforit majmuasi — fosforit konsentratlari ishlab chiqaradigan zamonaviy yirik konboyitish korxonasi. Boyitilmagan fosforit uni, kuydirilgan fosforit konsentrati va boshqalar mahsulotlar ishlab chiqaradi. Majmuaga Oʻzbekiston Respublikasi hukumatining 1997-yilda Markaziy Qizilqumdagi JeroySardara fosforit koni (mineral zaxirasi 223,9 mln. t, 100% li R205miqdori 45,5 mln. t) negizida Qizilqum fosforit majmuasini barpo etish toʻgʻrisidagi qaroriga koʻra asos solindi, korxona qurilishi va fosforit konini oʻzlashtirish NKMKga topshirildi. Shu yilning oʻzida majmuaning 1navbatini qurish va Toshkura konida fosforit rudalari qazib olish boshlandi."
                'Majmuada 1998—2001-yillarda "quruq" va "hoʻllangan" usullarda fosforitni boyitishning kombinatsiyalashgan texnologiyasi ishlab chiqildi, tarkibida 26—28% R205boʻlgan kuydirilgan fosforit konsentratini ishlab chiqarish, oʻzlashtirildi. NKMK mutaxassislari va Oʻzbekiston Fanlar akademiyasi olimlari bilan hamkorliqda tarkibida fosfori kam boʻlgan fosforitlardan fosforli kompleks va organikmineral oʻgʻitlar ishlab chiqarish dala sharoitlarida agrokimyoviy sinovdan oʻtkazish texnologiyasini yaratish, ularni sanoat miqyosida joriy etishgacha boʻlgan ishlar amalga oshirildi. 2002—2003-yillarda tarkibida 12— 15% P205boʻlgan kambagʻal fosforitlardan organikmineral oʻgʻitlar (superfosfat va azosuperfosfat) ishlab chiqarish ning soddalashtirilgan texnologiyasi yaratildi va respublika kimyo sanoati korxonalarida joriy etildi ("Navoiy elektrokimyo zavodi" aksiyadorlik jamiyati, Samarqand kimyo zavodi va boshqalar).',style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 157, 145, 145),
    );
  }
}



