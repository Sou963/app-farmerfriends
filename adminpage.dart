
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//url
final Uri url = Uri.parse('https://form.jotform.com/242682305594057');

class adminpageff extends StatefulWidget {
  const adminpageff({super.key});

  @override
  State<adminpageff> createState() => _adminpageffState();
}

class _adminpageffState extends State<adminpageff> {
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
          "Admin",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed:_admin,
            child: Text(
              "Admin",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
