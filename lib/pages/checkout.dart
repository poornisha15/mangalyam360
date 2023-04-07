import 'package:flutter/material.dart';
import 'package:mangalyam_360/pages/mylocation.dart';
import 'package:mangalyam_360/pages/payment.dart';
import 'package:provider/provider.dart';

import '../provider/cartprovider.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<cartprovider>(
      builder: (context, cart, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              "CheckOut",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
             iconTheme: IconThemeData(
          color: Colors.black,
          size: 30),
          ),
          body: Column(
            children: [
              Expanded(
                  child: cart.basketItems.length > 0
                      ? ListView.builder(
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
                          })
                      : Column(children: [
                          Image(
                            image: AssetImage(
                              "asset/empty.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'No items yet to place the Order',
                            style: TextStyle(color: Colors.black,fontSize: 20),
                          ),
                        ])),
              Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address:',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    TextButton(onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => MyLocation(),));
                    },
                      child: Text("Enter your location",
                      style: TextStyle(
                      fontSize: 20, 
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Service Tax:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Rs. ${cart.totalPrice * 0.05}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Price:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Rs. ${(cart.totalPrice * 1.05).toStringAsFixed(2)}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PaymentScreen(totalPrice: cart.totalPrice)));
                    },
                    child: Text(
                      "Book Now",
                      style: TextStyle(
                          color: Colors.white, fontSize: 20),
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
