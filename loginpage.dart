import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/login01.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';

class loginpagesversion01 extends StatefulWidget {
  const loginpagesversion01({super.key});

  @override
  State<loginpagesversion01> createState() => _loginpagesversion01State();
}

class _loginpagesversion01State extends State<loginpagesversion01> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(222, 255, 153, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 173, 28),
        centerTitle: true,
        title: Text(
          'Login page',
          style: TextStyle(
            color: Color.fromARGB(255, 218, 32, 12),
            fontSize: 30,
            fontWeight: FontWeight.w500,
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
      body: ListView(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('appimge/loginimage.jpg'),
            maxRadius: 150,
            minRadius: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(33, 150, 243, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 110.0),
            child: Text(
              'login to your account.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Color.fromARGB(255, 4, 104, 186),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(49, 186, 15, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              cursorColor: Color.fromARGB(255, 4, 104, 186),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(49, 186, 15, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.password_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 180),
            child: Text(
              'Forgotten Password',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  // ignore: prefer_const_constructors
                  backgroundColor: Color.fromRGBO(33, 150, 243, 1),
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                  child: IconButton(
                    onPressed: () {
                      //fb icon
                    },
                    icon: Icon(
                      Icons.facebook,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.0),
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      //fb icon
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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'),
                      maxRadius: 20,
                      minRadius: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
