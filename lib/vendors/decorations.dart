import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangalyam_360/model/vendorsdata.dart';
import 'package:provider/provider.dart';

import '../provider/cartprovider.dart';
import '../provider/wishlistprovider.dart';

class Decorations extends StatefulWidget {
  const Decorations ({super.key});

  @override
  State<Decorations> createState() => _DecorationsState();
}

class _DecorationsState extends State<Decorations> {
  List<VendorsData> Vendors = [
    VendorsData(
      price: 50000,
      Name: 'Pink Parrots',
      imageURL: 'asset/stagedec1.jpg',
      Count: "200 - 1000",
      rating: 4.5
    ),
    VendorsData(
      price: 30000,
      Name: 'Wedding mela',
      imageURL: 'asset/stagedec2.jpg',
      Count: "50 - 500",
      rating: 4.0
    ),
    VendorsData(
      price: 60000,
      Name: "Petals & Drapes" ,
      imageURL: 'asset/stagedec3.jpg',
      Count: "1000 - 2000",
      rating: 4.8
    ),
    VendorsData(
      price: 100000,
      Name: 'Lk Decors',
      imageURL: 'asset/stagedec4.jpg',
      Count: "200 - 500",
      rating: 4.9
    ),
    VendorsData(
      price: 40000,
      Name: 'Grace Decors',
      imageURL: 'asset/stagedec5.jpg',
      Count: "200 - 1000",
      rating: 4.5
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Consumer<wishlistprovider>(builder: (context, wishlist, child) {
      return Consumer<cartprovider>(builder: (context, Cart, child) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.black,
        size: 30),
        backgroundColor: Colors.white,
        title: Text("Decorations",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Vendors.length,
              itemBuilder: (context, index) {
                return Container(
                     width: MediaQuery.of(context).size.width - 20,
                    height: 350,
                    margin: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage(Vendors[index].imageURL),
                              fit: BoxFit.fitWidth,),),
                                        ),
                        Positioned(
                          bottom: 90,
                          left: 20,
                          child: Text(
                             Vendors[index].Name ,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          bottom: 100,
                          right: 20,
                          child: IconButton(
                            onPressed: (){
                              wishlist.add(
                              Vendors[index],
                            );
                            },
                            icon: Icon(Icons.favorite_border,
                          color: Colors.pink,
                          size: 32,))
                        ),
                        Positioned(
                          bottom: 70,
                          right: 55,
                          child: Icon(Icons.star,
                          color: Color.fromARGB(255, 243, 185, 10),
                          size: 30,)
                        ),
                        Positioned(
                          bottom: 70,
                          right: 20,
                          child: Text(Vendors[index].rating.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),)
                        ),
                        Positioned(
                          bottom: 50,
                          left: 20,
                          child: Text(
                           "Rs. "+Vendors[index].price.toString()+" per day",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 20,
                          child:    ElevatedButton(
                              onPressed: () {
                                Cart.add(Vendors[index]);
                            },child:Text("Add to cart" ,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                );
              },),
          ],
        ),
      ),
    );
    });
    });
  }
}