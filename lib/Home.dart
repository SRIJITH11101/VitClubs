import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vitclubs/Technical1.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vitclubs/DescriptionPage.dart';
import 'package:vitclubs/Toast/toast.dart';

class Home extends StatefulWidget {
  final String name;
  Home({Key? key, required this.name}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //String dname=name;
  //String sample = "hello";

  int idx = 0;
  int _ChangeIdx = 0;
  PageDecide() {
    if (_ChangeIdx == 0) {
      return Home(name: widget.name);
    }
    if (_ChangeIdx == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Description()),
      );
      return const Description();
    }
    if (_ChangeIdx == 2) {
      FirebaseAuth.instance.signOut();
      Navigator.pop(context);
      showToast(message: "Successfully Logged out");
    }
  }

  Idxchanger(int value) {
    setState(() {
      _ChangeIdx = value;
      PageDecide();
    });
  }

  // static const String sample = widget.name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: null,
          automaticallyImplyLeading: false,
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome,",
                    style: TextStyle(fontSize: 35.0),
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 25.0),
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
          backgroundColor: Colors.white,
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
                const Text(
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
                        child: const Row(
                          children: <Widget>[
                            Image(image: AssetImage('images/new.jpg')),
                            Text('Hello everyone'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: const Row(
                          children: <Widget>[
                            Image(image: AssetImage('images/new.jpg')),
                            Text('Hello everyone'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Technical Clubs",
                        style: TextStyle(fontSize: 22)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Technical()));
                        },
                        child: const Text("see all >",
                            style: TextStyle(fontSize: 18))),
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
                          color: const Color(0xFF4CFACF),
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
                      const SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF4CFACF),
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
                      const SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF4CFACF),
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
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Non-Technical Clubs", style: TextStyle(fontSize: 22)),
                    TextButton(
                        onPressed: null,
                        child:
                            Text("see all >", style: TextStyle(fontSize: 18))),
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
                          color: const Color(0xFF4CFACF),
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
                      const SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF4CFACF),
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
                      const SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF4CFACF),
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
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Regional Clubs", style: TextStyle(fontSize: 22)),
                    TextButton(
                        onPressed: null,
                        child:
                            Text("see all >", style: TextStyle(fontSize: 18))),
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
                          color: const Color(0xFF4CFACF),
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
                      const SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF4CFACF),
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
                      const SizedBox(width: 10),
                      Container(
                        height: 127,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF4CFACF),
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
                const SizedBox(height: 20),
                //NavigationBarApp()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
          child: GNav(
            onTabChange: (idx) {
              Idxchanger(idx);
            },
            padding: const EdgeInsets.all(20),

            //padding: EdgeInsets.symmetric(vertical: 20),
            gap: 10,
            backgroundColor: Colors.black,
            color: Colors.grey,
            activeColor: Colors.white,
            tabs: const [
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
