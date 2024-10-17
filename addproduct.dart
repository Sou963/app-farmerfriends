import 'package:farmersfriendsthe_first_version/afterloginfirstpage.dart';
import 'package:farmersfriendsthe_first_version/productpage/searching.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse('https://form.jotform.com/242682705110045');

class addproductff extends StatefulWidget {
  const addproductff({super.key});

  @override
  State<addproductff> createState() => _addproductffState();
}

class _addproductffState extends State<addproductff> {
  //link
  Future<void> _admin() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add product",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
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
                      builder: (context) => afterlogin(),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => searchff()));
              },
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
                      builder: (context) => addproductff(),
                    ));
              },
              icon: const Icon(
                Icons.plus_one_outlined,
                color: Color.fromARGB(255, 171, 12, 177),
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:20,left: 10,right: 10),
        child: Column(
          children: [
            Text(
              "Click where and gives it Address Image and other Information.",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed: _admin,
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
