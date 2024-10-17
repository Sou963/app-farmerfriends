import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/productpage/rp001.dart';
import 'package:farmersfriendsthe_first_version/productpage/rp005.dart';
import 'package:farmersfriendsthe_first_version/productpage/rp006.dart';
import 'package:farmersfriendsthe_first_version/productpage/rs002.dart';
import 'package:farmersfriendsthe_first_version/productpage/rs004.dart';
import 'package:farmersfriendsthe_first_version/productpage/rs03.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Rainy product',
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
                      builder: (context) => rs001(),
                    ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtlIwZq2ZGhox77UbDr4klJ1EkQsF23b07eQ&s',
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
                      builder: (context) => rs002(),
                    ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI2R3LVFHwXjfRzTCy3dmWizaIw8tJpCFDbg&s',
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
                      builder: (context) => rs003(),
                    ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV6soGDbqVAKKhumDPV9xmJ3w8xEj5LNYA_w&s',
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
                      builder: (context) => rs004(),
                    ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLyRy_mV1At0a22ylB2xkIciqAb5-Tk5Zacw&s',
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
                      builder: (context) => rs005(),
                    ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNUtInl7vdGHsE8xOh17WeU2qAoUcr_xF6zA&s',
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
                      builder: (context) => rs006(),
                    ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf0KfntM09EKsGNlyzmSGA0AEKUcd0m4F7Bg&s',
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
