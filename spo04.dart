import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/login01.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri url = Uri.parse('https://form.jotform.com/241983923451058');
class spacialoffer04 extends StatefulWidget {
  const spacialoffer04({super.key});

  @override
  State<spacialoffer04> createState() => _spacialoffer04State();
}

class _spacialoffer04State extends State<spacialoffer04> {
  Future<void> _link() async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
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
                        'appimge/farmer04.jpg',
                        
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
                        'Waterlemon',
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
                  'Waterlemon',
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
                      'Weight: 50 Ton\nPrice:300000',
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
                    'Zahid Khan',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Location\nMagura,Khal',
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
                    onTap: _link,
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
                  SizedBox(height: 15.0,),
                   GestureDetector(
                    onTap: (){},
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