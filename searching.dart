import 'package:farmersfriendsthe_first_version/productpage/summer.dart';
import 'package:farmersfriendsthe_first_version/productpage/summer01.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class searchff extends StatefulWidget {
  const searchff({super.key});

  @override
  State<searchff> createState() => _searchffState();
}

final TextEditingController searchingcontroller = TextEditingController();
final GlobalKey<FormState> formKey = GlobalKey<FormState>();  // Define the formKey here

class _searchffState extends State<searchff> {
  void searching() {
    if (formKey.currentState!.validate()) {  // Check if the form is valid
      String search = searchingcontroller.text;
      if (search == "winter") {
        Fluttertoast.showToast(msg: 'This is the winter product.');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => winterpro(),
            ));
      } else if (search == "summer") {
        Fluttertoast.showToast(msg: 'This is the summer product.');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => summerff(),
            ));
      } else {
        Fluttertoast.showToast(msg: 'This is the product.');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductPage(),
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Searching... ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            )),
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
                                key: formKey,  // Attach the formKey
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: searchingcontroller,
                                      validator: (val) => val == ""
                                          ? "Please write a search term"
                                          : null,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search_outlined,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Search...',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide:
                                          BorderSide(color: Colors.white60),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide:
                                          BorderSide(color: Colors.white60),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide:
                                          BorderSide(color: Colors.white60),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
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
                                          searching();
                                        },
                                        borderRadius: BorderRadius.circular(30),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 28,
                                          ),
                                          child: Text(
                                            'Search',
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
        }));
  }
}
