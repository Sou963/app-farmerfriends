import 'package:flutter/material.dart';

// ignore: camel_case_types
class mas11 extends StatefulWidget {
  const mas11({super.key});

  @override
  State<mas11> createState() => _mas11State();
}

// ignore: camel_case_types
class _mas11State extends State<mas11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),    
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(90.0))),
        child: ListView(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward,
                )),
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: const Text('Sourav Bosu'),
                accountEmail: const Text("souravbosu844@gmail.com"),
                currentAccountPicture: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGzubTaVG0YD4Y8k7Cqg8yuC8I1H8hmztZHA&s'),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: const Text('Home'),
              leading: const Icon(Icons.home),
            ),
            const ListTile(
              title: Text('Personal'),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text('Share'),
              leading: Icon(Icons.share),
            ),
            const ListTile(
              // ignore: prefer_const_constructors
              title: Text('Setting'),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
