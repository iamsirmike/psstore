import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ps_store/models/add_to_cart.dart';
import 'package:ps_store/utils/util.dart';

class Details extends StatefulWidget {
  final Color bgcolor;
  final String details;
  final String image;
  final String tag;
  final String name;
  final String price;
  Details(
      {this.bgcolor,
      this.details,
      this.image,
      this.tag,
      this.name,
      this.price});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int total = 1;
  bool clicked = false;
  final AddToCartController addToCartController =
      Get.put(AddToCartController());

  //add to cart
  add() {
    addToCartController.addToCart(widget.name, widget.image, widget.price, total);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgcolor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 50,
                      ),
                    ],
                  ),
                  Image.asset(
                    widget.image,
                    width: 220,
                    height: 220,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: UIColors.color1,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                          color: UIColors.color2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            widget.price,
                            style: TextStyle(
                              color: UIColors.color2,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 30,
                            width: 90,
                            color: Colors.grey[300],
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        total--;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      color: Colors.white,
                                      child: Center(
                                        child: Text('-'),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '$total',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        total++;
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      color: Colors.white,
                                      child: Center(
                                        child: Text('+'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(widget.details),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              add();
                              setState(() {
                                clicked = true;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: clicked == true
                                    ? Colors.yellowAccent
                                    : Colors.white,
                              ),
                              child: Icon(Icons.add_shopping_cart),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: UIColors.color2,
                            ),
                            child: Center(
                                child: Text(
                              'Buy Now',
                              style: TextStyle(color: UIColors.color1),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
