import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/cart/cart_response_model.dart';
import 'package:vipay/src/screens/cart/cubit/cart_cubit.dart';

class CartItemWidget extends StatelessWidget {
  final Cart cartItem;
  CartItemWidget(this.cartItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      width: 340,
      height: 100,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceBetween,
        spacing: 20,
        children: [
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              cartItem.food.restaurant.media.first.thumb ??
                  Images.defaulPicture,
              height: 60.0,
              width: 60,
            ),
          )),
          Center(
            child: Container(
              width: 200,
              height: 70,
              margin: EdgeInsets.only(right: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      cartItem.food.restaurant.name,
                      style: body1.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      cartItem.food.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: body10Black,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "${cartItem.food.price.toDouble()} GAS",
                        style: lightblueText,
                      )),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context.read<CartCubit>().incrementQuantity(cartItem);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightGreen,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  cartItem.quantity.toString(),
                  style: lightblueText,
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<CartCubit>().decrementQuantity(cartItem);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightGreen,
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
