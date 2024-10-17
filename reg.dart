import 'dart:convert';

import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/login01.dart';
import 'package:farmersfriendsthe_first_version/logintheninfo/login02.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  get formKey => null;

  var emailcontroller = TextEditingController();
  var namecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var adresscontroller = TextEditingController();
  var nationalid = TextEditingController();
  var isObsecure = true.obs;

  Future register() async {
    var url = "http://192.168.0.108/flutter-app/register.php";
    var data = json.decoder;
    if (data.obs == 200) {
      Fluttertoast.showToast(msg: 'You are Signup Unsuccessfully.');
    } else {
      Fluttertoast.showToast(msg: 'You are Signup Successfully.');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => login002(),
        ),
      );
    }
  }
  //   var url = "http://192.168.1.101/flutter-login-signup/register.php";
  //   var response = await http.post(url, body: {
  //     "email": email.text,
  //     "password": pass.text,
  //   });
  //   var data = json.decode(response.body);
  //   if (data == "Error") {
  //     FlutterToast(context).showToast(
  //         child: Text(
  //           'User allready exit!',
  //           style: TextStyle(fontSize: 25, color: Colors.red),
  //         ));
  //   } else {
  //     FlutterToast(context).showToast(
  //         child: Text('Registration Successful',
  //             style: TextStyle(fontSize: 25, color: Colors.green)));
  //     Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => pagespeoffer01(),),);
  //   }
  // }
  // //   try {
  // //   var res = await http.post(
  // //     Uri.parse("http://192.168.0.108/flutterapp/register01.php"),
  // //     body: {
  // //       "email": email.text,
  // //       "password": pass.text,
  // //     }
  // //   );
  // //
  // //   if (res.statusCode == 200) {
  // //     var resBodyOfsingup = jsonDecode(res.body);
  // //     if (resBodyOfsingup['success'] == true) {
  // //       Fluttertoast.showToast(
  // //           msg: 'Congratulations,You are Signup Successfully.');
  // //     } else {
  // //       Fluttertoast.showToast(msg: 'Error Occurred , Try Again');
  // //     }
  // //   }
  // // } catch (e) {
  // //   print(e.toString());
  // //   Fluttertoast.showToast(msg: e.toString());
  // // }
  //
  // }

  // void register() async {
  //   var url = Uri.parse("http://192.168.0.108/flutterapp/register01.php");
  //   var response = await http.post(url, body: {
  //     "email": email.text,
  //     "password": pass.text,
  //   });
  //   var data = json.decode(response.body);
  //   if (data == "Error") {
  //     Fluttertoast.showToast(
  //         msg: "User already exists!",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //   } else {
  //     Fluttertoast.showToast(
  //         msg: "Registration Successful",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         backgroundColor: Colors.green,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => pagespeoffer01()));
  //   }
  // }
  // void register() async {
  //   var url = Uri.parse("http://192.168.0.108/flutterapp/register01.php");
  //   try {
  //     var response = await http.post(url, body: {
  //       "email": email.text,
  //       "password": pass.text,
  //     });
  //
  //     if (response.statusCode == 200) {
  //       var data = json.decode(response.body);
  //       if (data == "Error") {
  //         Fluttertoast.showToast(
  //             msg: "User already exists!",
  //             toastLength: Toast.LENGTH_SHORT,
  //             gravity: ToastGravity.CENTER,
  //             backgroundColor: Colors.red,
  //             textColor: Colors.white,
  //             fontSize: 16.0
  //         );
  //       } else {
  //         Fluttertoast.showToast(
  //             msg: "Registration Successful",
  //             toastLength: Toast.LENGTH_SHORT,
  //             gravity: ToastGravity.CENTER,
  //             backgroundColor: Colors.green,
  //             textColor: Colors.white,
  //             fontSize: 16.0
  //         );
  //         Navigator.push(context, MaterialPageRoute(builder: (context) => pagespeoffer01()));
  //       }
  //     } else {
  //       Fluttertoast.showToast(
  //           msg: "Server error: ${response.statusCode}",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           backgroundColor: Colors.orange,
  //           textColor: Colors.white,
  //           fontSize: 16.0
  //       );
  //     }
  //   } catch (e) {
  //     Fluttertoast.showToast(
  //         msg: "An error occurred: $e",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //   }
  // }
  // void register() async {
  //   var url = Uri.parse("http://192.168.0.108/flutter-app/register.php");
  //   try {
  //     var response = await http.post(url, body: {
  //       "email": email.text,
  //       "password": pass.text,
  //     });
  //
  //     print("Response body: ${response.body}");
  //
  //     if (response.statusCode == 200) {
  //       var data = json.decode(response.body);
  //       if (data['status'] == "error") {
  //         Fluttertoast.showToast(
  //             msg: data['problem'],
  //             toastLength: Toast.LENGTH_SHORT,
  //             gravity: ToastGravity.CENTER,
  //             backgroundColor: Colors.red,
  //             textColor: Colors.black,
  //             fontSize: 16.0
  //         );
  //       } else {
  //         Fluttertoast.showToast(
  //             msg: data['success'],
  //             toastLength: Toast.LENGTH_SHORT,
  //             gravity: ToastGravity.CENTER,
  //             backgroundColor: Colors.green,
  //             textColor: Colors.black,
  //             fontSize: 16.0
  //         );
  //         Navigator.push(context, MaterialPageRoute(builder: (context) => pagespeoffer01()));
  //       }
  //     } else {
  //       Fluttertoast.showToast(
  //           msg: "Server error: ${response.statusCode}",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.CENTER,
  //           backgroundColor: Colors.orange,
  //           textColor: Colors.white,
  //           fontSize: 16.0
  //       );
  //     }
  //   } catch (e) {
  //     Fluttertoast.showToast(
  //         msg: "An error occurred: $e",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Registation Page',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
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
                      builder: (context) =>ProductPage(),
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
      body: LayoutBuilder(builder: (context, cons) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: cons.maxHeight,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 290,
                  child: Image.asset('appimge/famerwoman.jpg'),
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 40),
                      child: Column(
                        children: [
                          Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  //name
                                  TextFormField(
                                    controller: namecontroller,
                                    validator: (val) =>
                                        val == "" ? "please write name" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person_3_outlined,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Name___',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: emailcontroller,
                                    validator: (val) =>
                                        val == "" ? "please write email" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person_3_sharp,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Email___',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  //password
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Obx(() => TextFormField(
                                        controller: passwordcontroller,
                                        obscureText: isObsecure.value,
                                        validator: (val) => val == ""
                                            ? "please write Password"
                                            : null,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.vpn_key,
                                            color: Colors.black,
                                          ),
                                          suffixIcon: Obx(
                                            () => GestureDetector(
                                              onTap: () {
                                                isObsecure.value =
                                                    !isObsecure.value;
                                              },
                                              child: Icon(
                                                isObsecure.value
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          hintText: 'Password___',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.white60),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.white60),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.white60),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.white60),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 14,
                                            vertical: 6,
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                        ),
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  //adress
                                  TextFormField(
                                    controller: adresscontroller,
                                    validator: (val) =>
                                        val == "" ? "please write address" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.location_city,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Adress___',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  //national id
                                  TextFormField(
                                    controller: nationalid,
                                    validator: (val) =>
                                        val == "" ? "please write nationalid" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.card_giftcard,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Nation_id___',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: () {
                                    
                                        register();
                                        
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28,
                                        ),
                                        child: Text(
                                          'SingUp',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
