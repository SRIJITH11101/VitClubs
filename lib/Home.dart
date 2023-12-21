import 'package:flutter/material.dart';
import 'package:vitclubs/Technical1.dart';

import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome,",
                    style: TextStyle(fontSize: 35.0),
                  ),
                  Text(
                    "V V Saran",
                    style: TextStyle(fontSize: 23.0),
                  )
                ],
              ),
              Expanded(
                child: Image(
                  alignment: Alignment.centerRight,
                  image: AssetImage('images/fp_girl.png'),
                ),
              )
            ],
          )),
          backgroundColor: const Color.fromARGB(210, 233, 216, 244),
          toolbarHeight: 180.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Whats new?..",
                  style: TextStyle(fontSize: 22),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Row(
                          children: <Widget>[
                            Image(image: AssetImage('images/new.jpg')),
                            Text('Hello everyone'),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Row(
                          children: <Widget>[
                            Image(image: AssetImage('images/new.jpg')),
                            Text('Hello everyone'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Technical Clubs", style: TextStyle(fontSize: 22)),
                    Text("see all >", style: TextStyle(fontSize: 18)),
                  ],
                ),
<<<<<<< HEAD
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Technical Clubs", style: TextStyle(fontSize: 22)),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Technical()));
                      },
                      child: Text("see all >", style: TextStyle(fontSize: 18))),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 127,
                      width: 192,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF4CFACF),
                      ),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 5.0),
                                  child: Text(
                                    "Andriod \nClub",
                                    style: TextStyle(fontSize: 26),
=======
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Andriod \nClub",
                                      style: TextStyle(fontSize: 26),
                                    ),
>>>>>>> e23ce14e4975a901d9028aeab4faaf329c7a3017
                                  ),
                                ],
                              ),
<<<<<<< HEAD
                            ],
                          ),
                          Image(
                            image: AssetImage('images/Andriod.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Non-Technical Clubs", style: TextStyle(fontSize: 22)),
                  TextButton(
                    onPressed: null,
                    child: Text("see all >", style: TextStyle(fontSize: 18)),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 127,
                      width: 192,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF4CFACF),
                      ),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 5.0),
                                  child: Text(
                                    "Adventure \nClub",
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Image(
=======
                              Image(
>>>>>>> e23ce14e4975a901d9028aeab4faaf329c7a3017
                                image: AssetImage('images/Andriod.png'),
                              ),
                            ]),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Andriod \nClub",
                                      style: TextStyle(fontSize: 26),
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage('images/Andriod.png'),
                              ),
                            ]),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 5.0),
                                  child: Text(
                                    "Andriod \nClub",
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                            Image(
                              image: AssetImage('images/Andriod.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Non-Technical Clubs", style: TextStyle(fontSize: 22)),
                    Text("see all >", style: TextStyle(fontSize: 18)),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Adventure \nClub",
                                      style: TextStyle(fontSize: 26),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Image(
                                  image: AssetImage('images/Andriod.png'),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Andriod \nClub",
                                      style: TextStyle(fontSize: 26),
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage('images/Andriod.png'),
                              ),
                            ]),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 5.0),
                                  child: Text(
                                    "Andriod \nClub",
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                            Image(
                              image: AssetImage('images/Andriod.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Regional Clubs", style: TextStyle(fontSize: 22)),
                    Text("see all >", style: TextStyle(fontSize: 18)),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Andriod \nClub",
                                      style: TextStyle(fontSize: 26),
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage('images/Andriod.png'),
                              ),
                            ]),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Andriod \nClub",
                                      style: TextStyle(fontSize: 26),
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage('images/Andriod.png'),
                              ),
                            ]),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF4CFACF),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 5.0),
                                  child: Text(
                                    "Andriod \nClub",
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ),
                              ],
                            ),
                            Image(
                              image: AssetImage('images/Andriod.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //NavigationBarApp()
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 8),
          child: GNav(
            padding: EdgeInsets.symmetric(vertical: 20),
            gap: 10,
            backgroundColor: Colors.black,
            color: Colors.grey,
            activeColor: Colors.white,
            tabs: [
              GButton(
                icon: Icons.home_filled,
                text: "Home",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.supervised_user_circle,
                text: "User",
              ),
            ],
          ),
        ));
  }
}
