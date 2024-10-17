
import 'package:farmersfriendsthe_first_version/login01.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'firstpage.dart';
 final Uri link = Uri.parse('https://form.jotform.com/241983923451058');

class spacialoffer02 extends StatefulWidget {
  const spacialoffer02({super.key});


  @override
  State<spacialoffer02> createState() => _spacialoffer02State();
}

class _spacialoffer02State extends State<spacialoffer02> {
 
Future<void> _second() async {
     if (!await launchUrl(link)) {
    throw Exception('Could not launch $link');
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Special Offer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
       bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstPageDesign(),
                    ));
              },
              icon: const Icon(
                Icons.home_outlined,
                color: Color.fromARGB(255, 168, 7, 7),
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductPage(),
                    ));
              },
              icon: const Icon(
                Icons.production_quantity_limits,
                color: Color.fromARGB(255, 13, 43, 213),
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 202, 190, 22),
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login001(),
                    ));
              },
              icon: const Icon(
                Icons.person_outline,
                color: Color.fromARGB(255, 171, 12, 177),
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'appimge/farmer02.jpg',
                       
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 20.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Onion',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                title: Text(
                  'Onion',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Weight: 10 Ton\nPrice:500000',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 95, 232, 99),
                  child: Icon(Icons.price_change_outlined),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Owner Name',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Alok Pual',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Location\nDhaka,Uttara',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: _second,
                    child: Container(
                      height: 50.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Buy',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Details',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
