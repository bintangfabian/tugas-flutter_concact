import 'package:flutter/material.dart';

final namaContact = [
    "ijjal",
    "bintang",
    "fabian",
    "putra",
    "kiduk",
    "zawir",
    "pitiw",
    "awwal",
    "rapi",
    "akmal",
    "said",
    "faiz",
    "haikal",
    "aziz",
  ];
  
  final nomerContact = [
    "085274621463",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
    "086564532313",
  ];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SMK MADINATUL QURAN',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Contact',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(namaContact[index],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Text(nomerContact[index]),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://d1nhio0ox7pgb.cloudfront.net/_img/o_collection_png/green_dark_grey/256x256/plain/user.png')),
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DetailsContact(nama:namaContact[index], nomer:nomerContact[index])),
                    );
                  },
                ),
              );
            },
            itemCount: namaContact.length,
          ),
        ));
  }
}

class DetailsContact extends StatelessWidget {
  final String nama;
  final String nomer;

  DetailsContact({Key key, @required this.nama, this.nomer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column( children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Image.network('https://d1nhio0ox7pgb.cloudfront.net/_img/o_collection_png/green_dark_grey/256x256/plain/user.png', height: 200),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(nama,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(nomer,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
        ])
      ),
    );
  }
}
