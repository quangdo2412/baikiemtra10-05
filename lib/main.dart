import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List image = ["food", "drink", "snack", "sauc"];
  List name = ["Veggie", "Hennessy", "Toonies", "Sempio"];
  List<Color> bgcolor = [Colors.red, Colors.grey, Colors.grey, Colors.grey];
  List nameN = ["N1,900", "N2,300", "N3,450", "N4,102"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.format_list_bulleted_rounded,
            color: Colors.black,
          ),
          centerTitle: true,
          actions: [
            Image.asset(
              "images/people.jpg",
              width: 60,
              height: 60,
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Delicious",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "food for you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                    ]),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${name[index]}",
                            style: TextStyle(color: bgcolor[index]),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 5,
                            color: bgcolor[index],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(""),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Semore",
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 240,
              child: InkWell(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "images/${image[index]}.jpg"),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Text("${name[index]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              SizedBox(height: 15),
                              Text(
                                "${nameN[index]}",
                                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.house_rounded), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.near_me_sharp), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.timer), label: ""),
            ]),
      ),
    );
  }
}
