import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ps_store/models/add_to_cart.dart';
import 'package:ps_store/models/allproducts.dart';
import 'package:ps_store/screens/allproducts.dart';
import 'package:ps_store/screens/cart.dart';
import 'package:ps_store/screens/details.dart';
import 'package:ps_store/utils/util.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final AddToCartController addToCartController =
        Get.put(AddToCartController());

    final controller = PageController(
      initialPage: 0,
    );
    var currentPage = 0.0;

    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
        print(currentPage);
      });
    });

    return Scaffold(
      backgroundColor: UIColors.color1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Store',
                    style: TextStyle(
                        color: UIColors.color2,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(Cart());
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: UIColors.color2,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.shopping_cart,
                            color: UIColors.color1,
                          ),
                          Obx(
                            () => Text(
                              '${addToCartController.cartList.length}',
                              style: TextStyle(
                                color: UIColors.color1,
                                fontSize: 25,
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
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: UIColors.color3,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: PageView(
                  controller: controller,
                  children: <Widget>[
                    SliderContent(
                      label1: 'PlayStation®️VR',
                      label2: 'Discover a new world of play',
                      image: 'assets/images/psvr.png',
                      color: UIColors.color3,
                    ),
                    SliderContent(
                      label1: 'Improved',
                      label2: 'controller design with PS5 DualSense',
                      image: 'assets/images/dualsense-ps5.png',
                      color: UIColors.color7,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Text(
                    'Products',
                    style: TextStyle(
                      color: UIColors.color2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(AllProducts());
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          Details(
                            bgcolor: productsDetails[index].color,
                            image: productsDetails[index].image,
                            tag: productsDetails[index].tag,
                            name: productsDetails[index].name,
                            price: productsDetails[index].price,
                            details: productsDetails[index].details,
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.all(5),
                        width: 140,
                        decoration: BoxDecoration(
                          color: productsDetails[index].color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Spacer(),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    productsDetails[index].name,
                                    style: TextStyle(
                                      color: UIColors.color1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    productsDetails[index].desc,
                                    style: TextStyle(
                                      color: UIColors.color1,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    productsDetails[index].desc2,
                                    style: TextStyle(
                                      color: UIColors.color1,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    productsDetails[index].price,
                                    style: TextStyle(
                                      color: UIColors.color1,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 5,
                              bottom: 70,
                              child: Transform.rotate(
                                angle: 1250,
                                child: Image.asset(
                                  productsDetails[index].image,
                                  width: 140,
                                  height: 150,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: productsDetails.length - 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderContent extends StatelessWidget {
  const SliderContent({this.label1, this.label2, this.image, this.color});

  final String label1;
  final String label2;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Header(
                  label: '$label1',
                ),
                SizedBox(height: 5),
                Header(
                  label: '$label2',
                ),
                Spacer(),
              ],
            ),
          ),
          Positioned(
            top: 70,
            left: 140,
            child: Container(
              child: Hero(
                tag: 'head',
                child: Image.asset(
                  '$image',
                  width: 220,
                  height: 150,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        '$label',
        style: TextStyle(
          color: UIColors.color1,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
