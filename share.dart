import 'package:farmersfriendsthe_first_version/afterloginfirstpage.dart';
import 'package:farmersfriendsthe_first_version/productpage/addproduct.dart';
import 'package:farmersfriendsthe_first_version/productpage/searching.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse('https://form.jotform.com/241983923451058');

class shareff extends StatefulWidget {
  const shareff({super.key});

  @override
  State<shareff> createState() => _shareffState();
}

class _shareffState extends State<shareff> {
  Future<void> _link() async {
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
            "Share",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        //button nv

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
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 290,
            child: Image.asset('appimge/loginpage.jpg'),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.all(
                      Radius.circular(60),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, -3),
                      )
                    ]),
              )),
          SizedBox(
            height: 35,
          ),

          //share

          Center(
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                onTap: _link,
                borderRadius: BorderRadius.circular(30),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 28,
                  ),
                  child: Text(
                    'Share',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
