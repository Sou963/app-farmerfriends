import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:farmersfriendsthe_first_version/summerproductoderpage/sup01.dart';
import 'package:farmersfriendsthe_first_version/summerproductoderpage/sup02.dart';
import 'package:farmersfriendsthe_first_version/summerproductoderpage/sup03.dart';
import 'package:farmersfriendsthe_first_version/summerproductoderpage/sup04.dart';
import 'package:farmersfriendsthe_first_version/summerproductoderpage/sup05.dart';
import 'package:farmersfriendsthe_first_version/summerproductoderpage/sup06.dart';
import 'package:flutter/material.dart';

class summerff extends StatefulWidget {
  const summerff({super.key});

  @override
  State<summerff> createState() => _summerffState();
}

class _summerffState extends State<summerff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Summerproduct',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 25.0,
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
                color: Color.fromARGB(255, 207, 162, 12),
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
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
        child: Column(
          children: [
            SizedBox(height: 5),
            Text(
              textAlign: TextAlign.left,
              "Product",
              // textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sup001(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK2GF1AONFBsOnMnFWp0D-CZzUe5tewEO_Pw&s',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.black
                          .withOpacity(0.5), // Semi-transparent background
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Onion flower",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sup002(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1ntAsND2XPbkk3MCf8RWMVT7YcHp6uMr8nw&s',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Cabbage",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sup003(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU5mx6BWHETnqXKF0G6ShoQgKMqBkq7vfunA&s',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Cauiflower",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sup004(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBnepWS8PmFNsV0PHw33-onLyb6-wpO0hEOQ&s',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Carrot",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sup005(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJQM6H7NJeoKEZhLoWHGG3pdANiixm40FNLg&s',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Tomato",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 5, top: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sup006(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTllVO8mRvWPKeN3TXgXLF435mkr7JAITTg4Q&s',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "Eggplant",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
