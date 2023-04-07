import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cartprovider.dart';
import 'checkout.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<cartprovider>(builder: (context, cart, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30
          ),
          title: Text('Cart [\ RS. ${cart.totalPrice} ]',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600
              )),
          backgroundColor: Colors.white,
        ),
        body: cart.basketItems.length == 0
            ? Center(
                child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 100,
                    color: Colors.black54,
                  ),
                  Text(
                    'Your Cart is Empty',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ))
            : ListView.builder(
                itemCount: cart.basketItems.length,
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
                              image: AssetImage(cart.basketItems[index].imageURL,),
                              fit: BoxFit.fitWidth,),),
                                        ),
                        Positioned(
                          bottom: 70,
                          left: 20,
                          child: Text(
                             cart.basketItems[index].Name,
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
                             cart.remove(
                                cart.basketItems[index],
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
                          child: Text(cart.basketItems[index].rating.toString(),
                          style: TextStyle(
                            fontSize: 20,
                          ),)
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Text(
                           'Rs. ' + cart.basketItems[index].price.toString(),
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
                }),
        floatingActionButton: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(),
                  ));
            },
            child: Text(
              "CheckOut",
              style: TextStyle(
                  color: Colors.white, fontSize: 20),
            )),
      );
    });
  }
}
