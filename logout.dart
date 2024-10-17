import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:flutter/material.dart';

class logoutff extends StatefulWidget {
  const logoutff({super.key});

  @override
  State<logoutff> createState() => _logoutffState();
}

class _logoutffState extends State<logoutff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Logout",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPageDesign(),),);
            },
            child: Text(
              "Logout",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
