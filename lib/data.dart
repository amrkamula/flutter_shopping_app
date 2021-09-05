import 'dart:ui';

import 'package:flutter/material.dart';

class Product{
  String? name;
  double? price;
  Color? color;
  String? imageName;
  int? size;
  String? description;

  Product({this.name,this.color,this.imageName,this.price,this.description,this.size});
}


class Data{
  static String? placeHolder ="Lorem Ipsum is simply dummy text of the printing and"
      " typesetting industry. Lorem Ipsum has been the industry's standard "
      "dummy text ever since. When an unknown printer took a galley.";

static Map categories = {
  'Hand Bag':[
    Product(
        name: "Office Code",
        price: 234,
        size: 12,
        description: placeHolder,
        imageName: "bag_1.png",
        color: Colors.blue[900]),
    Product(
        name: "Belt Bag",
        price: 234,
        size: 8,
        description: placeHolder,
        imageName: "bag_2.png",
        color: Colors.orangeAccent),
    Product(
        name: "Hang Top",
        price: 234,
        size: 10,
        description: placeHolder,
        imageName: "bag_3.png",
        color: Colors.blueGrey),
    Product(
        name: "Old Fashion",
        price: 234,
        size: 11,
        description: placeHolder,
        imageName: "bag_4.png",
        color: Colors.orangeAccent,
    ),
    Product(
        name: "Office Code",
        price: 234,
        size: 12,
        description: placeHolder,
        imageName: "bag_5.png",
        color: Colors.pinkAccent
    ),
    Product(
      name: "Office Code",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "bag_6.png",
      color: Colors.grey,
    ),
  ],
  'Jewellery':[
    Product(
      name: "Silver Ring",
      price: 234,
      size: 2,
      description: placeHolder,
      imageName: "silver_ring.png",
      color: Colors.grey,
    ),
    Product(
      name: "Golden Ring",
      price: 234,
      size: 1,
      description: placeHolder,
      imageName: "golden_ring.png",
      color: Colors.orangeAccent,
    ),
    Product(
      name: "Moon Stone",
      price: 234,
      size: 10,
      description: placeHolder,
      imageName: "moon_stone.png",
      color: Colors.blueGrey,
    ),
    Product(
      name: "Chain",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "chain.png",
      color: Colors.orangeAccent,
    ),

  ],
  'Footwear':[
    Product(
      name: "Flib Flob",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "flib_1.png",
      color: Colors.indigo,
    ),
    Product(
      name: "Flib Flob",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "flib_2.png",
      color: Colors.lightBlue,
    ),
    Product(
      name: "Sandal",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "sandal_1.png",
      color: Colors.brown[300],
    ),
    Product(
      name: "Sandal",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "sandal_2.png",
      color: Colors.grey,
    ),
    Product(
      name: "Sandal",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "sandal_3.png",
      color: Colors.grey,
    ),
    Product(
      name: "Sports Shoes",
      price: 234,
      size: 12,
      description: placeHolder,
      imageName: "sports_shoes.png",
      color: Colors.redAccent,
    ),


  ],
  'Dresses':[
    Product(
      name: "Black Dress",
      price: 234,
      size: 170,
      description: placeHolder,
      imageName: "black_dress.png",
      color: Colors.grey,
    ),
    Product(
      name: "Short Dress",
      price: 234,
      size: 140,
      description: placeHolder,
      imageName: "short_dress.png",
      color: Colors.pinkAccent,
    ),
  ],
  'Trousers':[

  ],
  'Hijab':[

  ],
};

}



