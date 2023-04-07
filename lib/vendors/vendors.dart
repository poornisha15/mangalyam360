import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangalyam_360/vendors/caterings.dart';
import 'package:mangalyam_360/vendors/dance.dart';
import 'package:mangalyam_360/vendors/decorations.dart';
import 'package:mangalyam_360/vendors/gifts.dart';
import 'package:mangalyam_360/vendors/jewellery.dart';
import 'package:mangalyam_360/vendors/makeup.dart';
import 'package:mangalyam_360/vendors/mehendi.dart';
import 'package:mangalyam_360/vendors/music.dart';
import 'package:mangalyam_360/vendors/photography.dart';
import 'package:mangalyam_360/vendors/venues.dart';

class Vendors extends StatefulWidget {
  const Vendors({super.key});

  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 30),
        backgroundColor: Colors.white,
        title: Text(
          "Vendors",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Venues(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/venues.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 50,
                            child: Text(
                              "Venues",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ]
                          )
                          )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Photography(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/photography.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Photographers",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ])
                        )),
              ),
            ],
          ),
          Column(children: [
            SizedBox(
              height: 20,
            ),
             Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Makeup(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/makeup.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 50,
                            child: Text(
                              "Makeup",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ]
                          )
                          )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Mehendi(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/mehndi.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 40,
                            child: Text(
                              "Mehendi",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ])
                        )),
              ),
            ],
          ),
            Column(
              children: [
              SizedBox(
                height: 20,
              ),
               Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Decorations(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/decoration.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 25,
                            child: Text(
                              "Decorations",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ]
                          )
                          )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Caterings(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/caterings.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 40,
                            child: Text(
                              "Caterings",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ])
                        )),
              ),
            ],
          ),
                 Column(
              children: [
              SizedBox(
                height: 20,
              ),
               Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Gifts(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/gifts.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 60,
                            child: Text(
                              "Gifts",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ]
                          )
                          )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Jewellery(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/jewellery.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 30,
                            child: Text(
                              "Jewellery",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ])
                        )),
              ),
            ],
          ),

            ]),
                   Column(
              children: [
              SizedBox(
                height: 20,
              ),
               Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Music(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/music.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 60,
                            child: Text(
                              "Music",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ]
                          )
                          )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dance(),
                          ));
                    },
                    child: Container(
                        height: 230,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(children: [
                          Positioned(
                            top: 5,left: 5,right: 5,
                            child: Container(
                              height: 180,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage("asset/dance.jpg"),
                                  fit: BoxFit.cover)
                              ),),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 60,
                            child: Text(
                              "Dance",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ])
                        )),
              ),
            ],
          ),
            ]),
              SizedBox(
                height: 20,
              )
            ])
          ])
        ]),
      ),
    );
  }
}
