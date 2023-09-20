import 'package:ecommerce/Models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'assets/images/shoes_4.jpeg',
      description: 'The forward-thinking design of his latest signature shoe',
    ),
    Shoe(
      name: "Air Jordan",
      price: '220',
      imagePath: "assets/images/shoes_1.webp",
      description:
          "You've got the hops and the speed-lace up in shoes that enhance what you bring to the court.",
    ),
    Shoe(
      name: "KD Treys",
      price: '240',
      imagePath: "assets/images/shoes_3.webp",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: "Kyrie 6",
      price: '190',
      imagePath: "assets/images/shoes_2.webp",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

// get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
List<Shoe> getUserCart(){
    return userCart;
}

// add items to cart
void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
}

//remove item from cart
void removeItemFromCart (Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
}


}
