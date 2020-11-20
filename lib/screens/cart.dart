import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ps_store/models/add_to_cart.dart';
import 'package:ps_store/utils/util.dart';

class Cart extends StatelessWidget {
  final AddToCartController addToCartController =
      Get.put(AddToCartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      backgroundColor: UIColors.color1,
      body: addToCartController.cartList.length == 0
          ? Center(
              child: Text('Your items will appear here'),
            )
          : Obx(
              () => ListView.builder(
                itemCount: addToCartController.cartList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                  addToCartController.cartList[index].image),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    '${addToCartController.cartList[index].name}'),
                                Text(
                                  '${addToCartController.cartList[index].quantity} X ${addToCartController.cartList[index].price}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                              color: Colors.red,
                              icon: Icon(
                                Icons.cancel,
                              ),
                              onPressed: () {
                                addToCartController.removeItem(index);
                                print(addToCartController.cartList.length);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
