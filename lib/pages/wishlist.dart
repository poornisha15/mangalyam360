import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/wishlistprovider.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<wishlistprovider>(
      builder: (context, wishlist, child) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(
                color: Colors.black,
                size: 30
              ),
              backgroundColor: Colors.white,
              title: Text(
                "WishList",
                style: TextStyle(
                    fontSize: 22, color: Colors.black),
              ),
            ),
            body: wishlist.wishItems.length == 0
                ? Center(
                    child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Icon(
                        Icons.favorite,
                        size: 100,
                        color: Colors.pink,
                      ),
                      Text(
                        'Your WishList is Empty',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ))
                : ListView.builder(
                    itemCount: wishlist.wishItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                     width: MediaQuery.of(context).size.width - 20,
                    height: 300,
                    margin: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage(wishlist.wishItems[index].imageURL,),
                              fit: BoxFit.fitWidth,),),
                                        ),
                        Positioned(
                          bottom: 70,
                          left: 20,
                          child: Text(
                             wishlist.wishItems[index].Name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 20,
                          child: IconButton(
                            onPressed: (){
                             wishlist.remove(
                                wishlist.wishItems[index],
                            );
                            },
                            icon: Icon(Icons.delete,
                          color: Colors.black54,
                          size: 32,))
                        ),
                        Positioned(
                          bottom: 60,
                          right: 55,
                          child: Icon(Icons.star,
                          color: Color.fromARGB(255, 243, 185, 10),
                          size: 30,)
                        ),
                        Positioned(
                          bottom: 60,
                          right: 20,
                          child: Text(wishlist.wishItems[index].rating.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),)
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                           'Rs.' + wishlist.wishItems[index].price.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                );
                    },
                  ));
      },
    );
  }
}
