import 'dart:convert';
import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/login01.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class registation001 extends StatefulWidget {
  const registation001({super.key});

  @override
  State<registation001> createState() => _registation001State();
}

var formKey = GlobalKey<FormState>();
var emailcontroller = TextEditingController();
var namecontroller = TextEditingController();
var passwordcontroller = TextEditingController();
// var adresscontroller= TextEditingController();
var nationalid = TextEditingController();
var isObsecure = true.obs;

Future register() async {
  var url = "http://192.168.0.108/flutter-app/register.php";
  var data = json.decoder;
  if (data.obs == 200) {
    Fluttertoast.showToast(msg: 'You are Signup Unsuccessfully.');
  } else {
    Fluttertoast.showToast(msg: 'You are Signup Successfully.');
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => FirstPageDesign(),
    //   ),
    // );
  }
}

// validateuseremail() async {
//   try {
//     var res = await http.post(
//       Uri.parse(Api.validateuser),
//       body: {
//         'user_email': emailcontroller.text.trim(),
//       },
//     );
//     if (res.statusCode == 200) {
//       var resBodyOfValidateEmail = jsonDecode(res.body);
//       if (resBodyOfValidateEmail['emailfound'] == true) {
//         Fluttertoast.showToast(
//             msg:
//                 'Email is already in someone else use. Please try another email');
//       } else {
//         registerandsaveuserecord();
//       }
//     }
//   } catch (e) {
//     print(e.toString());
//     Fluttertoast.showToast(msg: e.toString());
//   }
// }
//
// registerandsaveuserecord() async {
//   // ignore: unused_local_variable
//   user userModel = user(
//     1,
//     namecontroller.text.trim(),
//     emailcontroller.text.trim(),
//     passwordcontroller.text.trim(),
//     nationalid.text.trim() as int,
//   );
//   try {
//     var res = await http.post(
//       Uri.parse(Api.singup),
//       body: userModel.toJson(),
//     );
//
//     if (res.statusCode == 200) {
//       var resBodyOfsingup = jsonDecode(res.body);
//       if (resBodyOfsingup['success'] == true) {
//         Fluttertoast.showToast(
//             msg: 'Congratulations,You are Signup Successfully.');
//       } else {
//         Fluttertoast.showToast(msg: 'Error Occurred , Try Again');
//       }
//     }
//   } catch (e) {
//     print(e.toString());
//     Fluttertoast.showToast(msg: e.toString());
//   }

// Future save() async{
//   formKey.obs== 100;
// }

class _registation001State extends State<registation001> {
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
                                  //email
                                  TextFormField(
                                    controller: namecontroller,
                                    validator: (val) =>
                                        val == "" ? "please write email" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email,
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
                                  //   TextFormField(
                                  //     controller: adresscontroller,
                                  //     validator: (val) =>
                                  //         val == "" ? "please write email" : null,
                                  //     decoration: InputDecoration(
                                  //       prefixIcon: Icon(
                                  //         Icons.location_city,
                                  //         color: Colors.black,
                                  //       ),
                                  //       hintText: 'Adress___',
                                  //       border: OutlineInputBorder(
                                  //         borderRadius: BorderRadius.circular(30),
                                  //         borderSide:
                                  //             BorderSide(color: Colors.white60),
                                  //       ),
                                  //       enabledBorder: OutlineInputBorder(
                                  //         borderRadius: BorderRadius.circular(30),
                                  //         borderSide:
                                  //             BorderSide(color: Colors.white60),
                                  //       ),
                                  //       focusedBorder: OutlineInputBorder(
                                  //         borderRadius: BorderRadius.circular(30),
                                  //         borderSide:
                                  //             BorderSide(color: Colors.white60),
                                  //       ),
                                  //       disabledBorder: OutlineInputBorder(
                                  //         borderRadius: BorderRadius.circular(30),
                                  //         borderSide:
                                  //             BorderSide(color: Colors.white60),
                                  //       ),
                                  //       contentPadding: EdgeInsets.symmetric(
                                  //         horizontal: 14,
                                  //         vertical: 6,
                                  //       ),
                                  //       fillColor: Colors.white,
                                  //       filled: true,
                                  //     ),
                                  //   ),
                                  //  SizedBox(height: 20,),
                                  //national id
                                  TextFormField(
                                    controller: nationalid,
                                    validator: (val) =>
                                        val == "" ? "please write email" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email,
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
