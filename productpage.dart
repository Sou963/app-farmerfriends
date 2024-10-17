import 'package:farmersfriendsthe_first_version/firstpage.dart';
import 'package:farmersfriendsthe_first_version/productpage/winterproduct.dart';
import 'package:flutter/material.dart';

class ListItem {
  final String text;
  final String imagePath;

  ListItem(this.text, this.imagePath);
}

class ProductPage1 extends StatefulWidget {
  const ProductPage1({super.key});

  @override
  State<ProductPage1> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage1> {
  final List<ListItem> myList = [
    ListItem("One", "appimge/pp1.jpg"),
    ListItem("Two", "appimge/pp2.jpeg"),
    ListItem('Three', 'appimge/pp3.jpeg'),
    ListItem('Four', 'appimge/pp4.jpeg'),
    ListItem('five', 'appimge/pp5.jpeg'),
    ListItem('Six', 'appimge/pp06.jpeg'),
    // ... more items
  ];
  final List<ListItem> myList1 = [
    ListItem('Seven', 'appimge/pp7.jpeg'),
    ListItem('Eight', 'appimge/pp8.jpeg'),
    ListItem('Nine', 'appimge/pp9.jpeg'),
    ListItem('Ten', 'appimge/pp10.jpeg'),
    ListItem('Eleven', 'appimge/pp11.jpeg'),
    ListItem('Twelve', 'appimge/pp12.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Productpage',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 25.0,
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
                color: Color.fromARGB(255, 207, 162, 12),
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Color.fromARGB(255, 171, 12, 177),
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            "Summer Product.",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black87,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //Handle item click here (replace with your action)
                      print('Item ${myList[index].text} clicked');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        // Add ClipRRect for rounded corners

                        child: Image.asset(
                          myList[index].imagePath,
                          fit: BoxFit.cover, // Ensure full coverage
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            
            flex: 2,
            child: Container(
     
              color: Colors.black87,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: ClipRect(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          myList1[index].imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
