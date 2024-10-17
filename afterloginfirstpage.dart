import 'package:farmersfriendsthe_first_version/admin/personalpage.dart';
import 'package:farmersfriendsthe_first_version/admin/share.dart';
import 'package:farmersfriendsthe_first_version/logintheninfo/logout.dart';
import 'package:farmersfriendsthe_first_version/productpage/addproduct.dart';
import 'package:farmersfriendsthe_first_version/productpage/searching.dart';
import 'package:farmersfriendsthe_first_version/productpage/summer.dart';
import 'package:farmersfriendsthe_first_version/productpage/summer01.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:farmersfriendsthe_first_version/spo01.dart';
import 'package:farmersfriendsthe_first_version/spo02.dart';
import 'package:farmersfriendsthe_first_version/spo03.dart';
import 'package:farmersfriendsthe_first_version/spo04.dart';
import 'package:farmersfriendsthe_first_version/spo05.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class afterlogin extends StatefulWidget {
  const afterlogin({super.key});

  @override
  State<afterlogin> createState() => _FirstPageDesignState();
}

class _FirstPageDesignState extends State<afterlogin> {
  donotlogin() {
    Fluttertoast.showToast(msg: "Please Login.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => logoutff(),
                ),
              );
            },
            child: Icon(Icons.login_outlined),
          )
        ],
        title: Text(
          'Home Pages',
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )),
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_forward),
            ),
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                arrowColor: Colors.white,
                accountName: const Text('Term Avengers'),
                accountEmail: const Text("souravbosu844@gmail.com"),
                currentAccountPicture: Image.asset('appimge/grouppic.jpg'),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text(
                'Home',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              leading: const Icon(Icons.home),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => personalff()));
              },
              title: const Text(
                'Personal',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              leading: const Icon(Icons.person),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => shareff()));
              },
              title: const Text(
                'Share',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              leading: const Icon(Icons.share),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => addproductff(),
                    ));
              },
              title: const Text(
                'Add',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              leading: const Icon(Icons.plus_one_outlined),
            ),
          ],
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Special offer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pagespeoffer01(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Image.asset(
                          'appimge/farmer01.jpg',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => spacialoffer02(),
                            ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'appimge/farmer02.jpg',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => spacialoffer03(),
                            ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'appimge/farmer03.jpg',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => spacialoffer04(),
                            ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'appimge/farmer04.jpg',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => spacialoffer05(),
                            ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Image.asset(
                          'appimge/farmer05.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 55),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 100, bottom: 00, right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => summerff(),))
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.only(left: 5.0),
                          child: Center(
                            child: Text(
                              'Summer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(),
                              ));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Center(
                            child: Text(
                              'Rainy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(241, 68, 137, 255),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => winterpro(),
                              ));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Center(
                            child: Text(
                              'Winter',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: Container(
                  //     height: 100,
                  //     width: 100,
                  //     padding: EdgeInsets.only(left: 10.0),
                  //     child: Center(
                  //       child: Text(
                  //         'Goods',
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //       color: Color.fromARGB(255, 243, 33, 229),
                  //     ),
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: Container(
                  //     height: 100,
                  //     width: 100,
                  //     padding: EdgeInsets.only(left: 10.0),
                  //     child: Center(
                  //       child: Text(
                  //         'Goods',
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //       color: Color.fromARGB(255, 107, 5, 215),
                  //     ),
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: Container(
                  //     height: 100,
                  //     width: 100,
                  //     padding: EdgeInsets.only(left: 10.0),
                  //     child: Center(
                  //       child: Text(
                  //         'Goods',
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //       color: Color.fromARGB(255, 239, 223, 120),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
