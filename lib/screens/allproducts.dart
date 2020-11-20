import 'package:flutter/material.dart';
import 'package:ps_store/models/allproducts.dart';
import 'package:ps_store/screens/details.dart';
import 'package:ps_store/utils/util.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.color1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Spacer(),
                  Icon(Icons.search),
                ],
              ),
              Spacer(),
              Text(
                'Products',
                style: TextStyle(
                  color: UIColors.color2,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 490,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Details(
                            bgcolor: productsDetails[index].color,
                            image: productsDetails[index].image,
                            tag: productsDetails[index].tag,
                            name: productsDetails[index].name,
                            price: productsDetails[index].price,
                            details: productsDetails[index].details,
                          );
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color: productsDetails[index].color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      productsDetails[index].name,
                                      style: TextStyle(
                                        color: UIColors.color1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
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
                                      productsDetails[index].price,
                                      style: TextStyle(
                                        color: UIColors.color1,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 190,
                              bottom: 0,
                              child: Hero(
                                tag: productsDetails[index].tag,
                                child: Transform.rotate(
                                  angle: 1250,
                                  child: Image.asset(
                                    productsDetails[index].image,
                                    width: 140,
                                    height: 150,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: productsDetails.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
