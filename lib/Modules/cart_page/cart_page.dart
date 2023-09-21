import 'package:ecommerce/Models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Models/cart.dart';
import '../../shared/components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heading
          const Text('My Cart',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem( shoe: individualShoe,);
          },))
        ],
      ),
    ),);

  }
}
