import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangalyam_360/model/services.dart';
import 'package:mangalyam_360/vendors/vendors.dart';

import '../model/items.dart';
import 'mydrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List<Item> items = [
  Item(
      Name: 'Photography',
      imageURL: 'asset/photography.jpg',
    ),
    Item(
      Name: 'Jewellery',
      imageURL: 'asset/jewellery.jpg',
    ),
    Item(
      Name: 'Makeup',
      imageURL: 'asset/makeup.jpg',
    ),
     Item(
      Name: 'Caterings',
      imageURL: 'asset/caterings.jpg',
    ),
    Item(
      Name: 'Gifts',
      imageURL: 'asset/gifts.jpg',
    ),
    ];

     List<Item1> items1 = [
  Item1(
      Name: 'Venues',
      imageURL: 'asset/venues.jpg',
    ),
    Item1(
      Name: 'Mehendi',
      imageURL: 'asset/mehndi.jpg',
    ),
    Item1(
      Name: 'Decoration',
      imageURL: 'asset/decoration.jpg',
    ),
     Item1(
      Name: 'Dance',
      imageURL: 'asset/dance.jpg',
    ),
    Item1(
      Name: 'Music',
      imageURL: 'asset/music.jpg',
    ),
    ];
  @override
  Widget build(BuildContext context) {
    List<Service> _serviceList = Service.ServiceList;
    List<Service1> _serviceList1 = Service1.ServiceList1;
        Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 10,
        automaticallyImplyLeading: false,
      backgroundColor:Colors.white,
        title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Location",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                      ),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                          color: Colors.black,),
                          SizedBox(width: 5,),
                          Text("Chennai,Tamil Nadu",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w700,
                          ),),
                          Icon(Icons.arrow_drop_down,
                          color: Colors.black,
                          size: 25,),
                          SizedBox(width: 80,),
                        ],),
                        SizedBox(height: 13,),
                        
                    ],),
                ],),
      ),
      body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        width: size.width * .95,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            const Expanded(
                                child: TextField(
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(fontSize: 18,color: Colors.black54),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            )),
                            Icon(
                              Icons.mic,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 150,
                child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Vendors(),));
                    }),
                    child: Container(
                      width: 130,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                items[index].imageURL),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].Name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20,),
                     SizedBox(
                height: 150,
                child: ListView.builder(
                itemCount: items1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Vendors(),));
                    }),
                    child: Container(
                      width: 130,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                items1[index].imageURL),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items1[index].Name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Popular Decorations',
              style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
           SizedBox(height: 10,),
           SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: _serviceList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Vendors(),)); 
                    },
                    child: Container(
                      width: 300,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 0,
                            left: 0,
                            child: Image.asset(_serviceList[index].imageURL,
                            height: 200,),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _serviceList[index].Name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('RS.' + _serviceList[index].price.toString()
                                + '  Per day',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 20,
                            child: Row(
                              children: [
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star_half,
                                color: Color.fromARGB(255, 133, 106, 8),
                                size: 23,),
                                Text(
                                        _serviceList[index].rating.toString(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
          ),
           SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Popular Photography',
              style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          SizedBox(height: 10,),
           SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: _serviceList1.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Vendors(),)); 
                    },
                    child: Container(
                      width: 300,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 0,
                            left: 0,
                            child: Image.asset(_serviceList1[index].imageURL,
                            height: 200,),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _serviceList1[index].Name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('RS.' + _serviceList1[index].price.toString()
                                + '  Per day',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 20,
                            child: Row(
                              children: [
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star,
                                color: Colors.amber,
                                size: 23,),
                                Icon(Icons.star_half,
                                color: Color.fromARGB(255, 133, 106, 8),
                                size: 23,),
                                Text(
                                        _serviceList[index].rating.toString(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
          ),
    ])
    ));
  }
}