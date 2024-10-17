import 'package:farmersfriendsthe_first_version/afterloginfirstpage.dart';
import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/logintheninfo/adminpage.dart';
import 'package:farmersfriendsthe_first_version/reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class login001 extends StatefulWidget {
  const login001({super.key});

  @override
  State<login001> createState() => _login001State();
}

var formKey = GlobalKey<FormState>();
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
var isObsecure = true.obs;

class _login001State extends State<login001> {

  void login() {
    String email = emailcontroller.text;
    String password = passwordcontroller.text;

    if (email == 'sourav@gmail.com' && password == '123456') {
      print('login successfull');
      Fluttertoast.showToast(msg: 'You are login successfully.');
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => afterlogin(),
        ),
      );
    }
    else if(email == 'avishek@gamil.com' && password == 'avishek123'){
       print('login successfull');
      Fluttertoast.showToast(msg: 'You are login successfully.');
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => afterlogin(),
        ),
      );
    }
     else if(email == 'ma@gamil.com' && password == 'ma@001'){
       print('login successfull');
      Fluttertoast.showToast(msg: 'You are login successfully.');
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => afterlogin(),
        ),
      );
    }
     else if(email == 'alok123@gamil.com' && password == '12345'){
       print('login successfull');
      Fluttertoast.showToast(msg: 'You are login successfully.');
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => afterlogin()),
        
      );
    }
    else if(email == 'abc123@gamil.com' && password == 'abc123'){
       print('login successfull');
      Fluttertoast.showToast(msg: 'You are login successfully.');
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>afterlogin(),
        ),
      );
    }
    
     else {
      print("login unsuccessfull");
      Fluttertoast.showToast(msg: 'You are login Unsuccessfully.');
    }
  }

  //admin login

  void adminlogin(){
    String admin_name=emailcontroller.text;
    String admin_password=passwordcontroller.text;

    //if condition

    if(admin_name=="souravbosu844@gmail.com" && admin_password=="123@003***"){
         Fluttertoast.showToast(msg: "Admin Login successfull");

         Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => adminpageff(),
        ),
      );

    }
    else{
      Fluttertoast.showToast(msg: "Please check your Email or Password.");
    }
  }

   donotlogin() {
    Fluttertoast.showToast(msg: "Please Login.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Login Page',
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
                //donotlogin();
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) =
                //     ));
                donotlogin();
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
                donotlogin();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => searchff(),));
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => login001(),
                //     ));
                donotlogin();
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
                                    controller: emailcontroller,
                                    validator: (val) =>
                                        val == "" ? "please write email" : null,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.email,
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
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: () {
                                        login();
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28,
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Register(),
                                            ));
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28,
                                        ),
                                        child: Text(
                                          'Registation',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),

                                  //admin
                                  SizedBox(height: 20,),
                                   Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: () {
                                       adminlogin();
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 28,
                                        ),
                                        child: Text(
                                          'Admin',
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
