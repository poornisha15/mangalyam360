import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangalyam_360/model/vendorsdata.dart';
import 'package:provider/provider.dart';

import '../provider/cartprovider.dart';
import '../provider/wishlistprovider.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  List<VendorsData> Vendors = [
    VendorsData(
      price: 5000,
      Name: 'The Music House',
      imageURL: 'asset/music.jpg',
      Count: "200 - 1000",
      rating: 4.5
    ),
    VendorsData(
      price: 3000,
      Name: 'Fab Events',
      imageURL: 'asset/music1.jpg',
      Count: "50 - 500",
      rating: 4.0
    ),
    VendorsData(
      price: 6000,
      Name: "Dj Deepak" ,
      imageURL: 'asset/music2.jpg',
      Count: "1000 - 2000",
      rating: 4.8
    ),
    VendorsData(
      price: 10000,
      Name: 'Dj Black',
      imageURL: 'asset/music3.jpg',
      Count: "200 - 500",
      rating: 4.9
    ),
    VendorsData(
      price: 4000,
      Name: 'Dj Yash',
      imageURL: 'asset/music4.jpg',
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
        title: Text("Music",
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
                           "Rs. "+Vendors[index].price.toString()+" onwards",
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