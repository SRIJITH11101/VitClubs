import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 194, 194, 194),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [Colors.white, Color.fromARGB(0, 168, 168, 168)])),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'OBJECTIVES',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.fiber_manual_record_rounded,
                      size: 19,
                    ),
                    Expanded(
                        child: Text(
                            'To create awareness about android Technology among students.')),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.fiber_manual_record_rounded,
                      size: 19,
                    ),
                    Expanded(
                        child: Text(
                            'To solve social problems using Android Tecnology')),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.fiber_manual_record_rounded,
                      size: 19,
                    ),
                    Expanded(
                        child: Text(
                            'To learn and gain detailed knowledge about android and other new technologies required for mobile application Development')),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'COORDINATOR',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/new.jpg'),
                      radius: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DR Nanda kumar P'),
                        Text('Email:androidclub@vitap.ac.in'),
                        Text('Cabin : 424 -A , Faculty area - 14 , AB1')
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'EVENTS',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                      width: 230,
                    ),
                    Text('see all >'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0, top: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black26, width: 1),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white,
                                  Color.fromARGB(0, 168, 168, 168)
                                ]),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Openheimer \nClub",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                          width: 5,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black26, width: 1),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white,
                                  Color.fromARGB(0, 168, 168, 168),
                                ],),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Openheimer \nClub",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                          width: 5,
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26, width: 1),
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.white,
                                  Color.fromARGB(0, 168, 168, 168),
                                ],),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 5.0),
                                    child: Text(
                                      "Openheimer \nClub",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: double.infinity,
                )
              ],
            ),
          ),
          Container(
            color: Colors.black,
            child: const Image(
              height: 300,
              width: 400,
              image: AssetImage(
                  'images/Android+OS+for+Smartphone+Download+Free-1302935827.png'),
            ),
          ),
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            onPressed: () {},
            icon:
                const Icon(color: Colors.white, Icons.arrow_back_ios_new_sharp),
          ),
          Container(
            alignment: const Alignment(0, -0.4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 125,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'Android   Club',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/new.jpg'),
                        radius: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
