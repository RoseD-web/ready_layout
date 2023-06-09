import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List randomImages = [
    'https://i.pinimg.com/originals/39/34/1a/39341ac32898c0a5d0d3fc189cda0f79.jpg',
    'https://images.squarespace-cdn.com/content/v1/52a1b3bfe4b05a96c7788819/1454769093926-HSZN73U1OJEXFQVB7XFX/ilija.jpg?format=1500w',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Elon_Musk_Brazil_2022.png/1200px-Elon_Musk_Brazil_2022.png',
    'https://static.wikia.nocookie.net/escapethenight/images/c/ca/JESSE.jpg/revision/latest?cb=20170715080656'
  ];
  String image = 'assets/images/orange.jpeg';
  void _waitFiveSeconds() async {
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      image = 'assets/image2.png'; // change to the second image
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {},
                ),
                actions: [
                  IconButton(
                    iconSize: 35.0,
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
                expandedHeight: 600,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/orange.jpeg'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [Colors.black, Colors.black.withOpacity(.3)],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Model winner of 2018 Tokyo Art costume design week',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 27),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            ExactAssetImage('assets/images/orange.jpeg'),
                        radius: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Izabella Zhang',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            '6 Days Ago',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      Container(
                        width: 120,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange),
                        child: Align(
                            child: Text(
                          '+ Follow',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 80.0,
                //   width: 80.0,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Recommended by :',
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      width: 70,
                    ),
                    Text('18 / 56 users', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for (int i = 0; i < randomImages.length; i++)
                                Align(
                                  widthFactor: 0.5,
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(randomImages[i]),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: Text('+36',
                                style: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.grey.shade700,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('2 615',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.message,
                                color: Colors.grey.shade700,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('368',
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                child: Image.asset('assets/icons/h.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('991',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ]))
            ],
          ),
        ],
      ),
    );
  }
}
