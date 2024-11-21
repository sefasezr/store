import 'package:alisveris/dosya.dart';
import 'package:flutter/material.dart';

void main() {
  print("ilk islem basarili");
  islem(selamlamaMetni, sayi);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Serbay';
    bool isDebug = false;

    return MaterialApp(
      debugShowCheckedModeBanner: isDebug,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Image.asset('assets/notification.png'),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/bag-2.png'),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search Anything...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Color(0xFFD1D5DB), width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'View All ->',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  for (int i = 0; i < 10; i++)
                    Column(
                      children: [
                        Image.asset(i % 2 == 0
                            ? 'assets/fashion.png'
                            : 'assets/electronic.png'),
                        Text(i % 2 == 0 ? 'Fashion' : 'Electronics'),
                      ],
                    ),
                ],
              ),
            ),
            Text('Hello, $name! How are you?'),
          ],
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

String selamlamaMetni = "Merhaba Arkadaşlar!";
int sayi = 5;
String name = 'Serbay';
String soyisim = 'Özkan';
int yas = 22;
double kilo = 70.45;
bool askerlikYaptiMi = false;

List<int> okullaGecenYillar = [2013, 2014, 2015, 2016, 2017, 2018, 2019];

Insan serbay = Insan("Serbay", "Özkan", 22, 70, false,
    [2013, 2014, 2015, 2016, 2017, 2018, 2019]);
Ogrenci tuncay = Ogrenci(
    'Tuncay',
    'Özkan',
    22,
    70,
    false,
    [2013, 2014, 2015, 2016, 2017, 2018, 2019],
    "123456",
    "İstanbul Teknik Üniversitesi");

class Insan {
  String name;
  String soyisim;
  int yas;
  double kilo;
  bool askerlikYaptiMi;
  List<int> okullaGecenYillar;

  Insan(this.name, this.soyisim, this.yas, this.kilo, this.askerlikYaptiMi,
      this.okullaGecenYillar) {
    print("insan olusturuldu");
  }
}

class Ogrenci extends Insan {
  String okulNumara;
  String okulIsmi;

  Ogrenci(
      super.name,
      super.soyisim,
      super.yas,
      super.kilo,
      super.askerlikYaptiMi,
      super.okullaGecenYillar,
      this.okulNumara,
      this.okulIsmi);
}
