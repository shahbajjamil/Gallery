/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
*/

import 'package:flutter/material.dart';
import 'package:gallery_app/preview_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List_Item = [
    {
      'pic': 'assets/img/1.jpg',
    },
    {
      'pic': 'assets/img/2.jpg',
    },
    {
      'pic': 'assets/img/3.jpg',
    },
    {
      'pic': 'assets/img/4.jpg',
    },
    {
      'pic': 'assets/img/5.jpg',
    },
    {
      'pic': 'assets/img/6.jpg',
    },
    {
      'pic': 'assets/img/7.jpg',
    },
    {
      'pic': 'assets/img/8.jpg',
    },
    {
      'pic': 'assets/img/9.jpg',
    },
    {
      'pic': 'assets/img/10.jpg',
    },
    {
      'pic': 'assets/img/11.jpg',
    },
    {
      'pic': 'assets/img/12.jpg',
    },
    {
      'pic': 'assets/img/13.jpg',
    },
    {
      'pic': 'assets/img/14.jpg',
    },

    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gallery'),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: List_Item.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int i) {
            return Product(product_image: List_Item[i]['pic']);
          },
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  final product_image;

  Product({this.product_image});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_image,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      PreviewImage(picDetails_view: product_image)));
            },
            child: GridTile(
              child: Image.asset(
                product_image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

