import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:farmersfriendsthe_first_version/productpage/wp01.dart';
import 'package:farmersfriendsthe_first_version/productpage/wpo2.dart';
import 'package:flutter/material.dart';

class winterpro extends StatefulWidget {
  const winterpro({super.key});

  @override
  State<winterpro> createState() => _ProductPageState();
}

class _ProductPageState extends State<winterpro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Winter Product",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => winterp01()));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzIXNwWvwxiLicaEGfvN8Tm3bDpGDXIie3g&s',
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
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => winterp02()));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREC-_qQVErvobRbg3-ieKg9A11lbNZoj_PbQ&s',
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
                onTap: () {},
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvPuecrbumbQGCXA3hkbku_9rH3n7KXaBIUA&s',
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
                onTap: () {},
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5-wbyIQxVTxhLR1P1C6jl1NwzKMvs0G9h9A&s',
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
                onTap: () {},
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYIaf3NzceLvgUxdfgE0KZeMDIvym1LCZ5RA&s',
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
                onTap: () {},
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR19aZu9im8id8NDN8NRmV0O2UsDtxpokirCA&s',
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
