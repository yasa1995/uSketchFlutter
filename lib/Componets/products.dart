import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterloginui/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      'name': "Palazzo Pant-1",
      'picture': "assets/images/0001.jpg",
      'old_price': 2000,
      'price': 2000,
    },
    {
      'name': "Gent Trouser",
      'picture': "assets/images/0002.jpg",
      'old_price': 3500,
      'price': 3500,
    },
    {
      'name': "Palazzo Pant-2",
      'picture': "assets/images/0003.jpg",
      'old_price': 1500,
      'price': 1500,
    },
    {
      'name': "Short Frock ",
      'picture': "assets/images/0004.jpg",
      'old_price': 2500,
      'price': 2500,
    },
    {
      'name': "Long Frock",
      'picture': "assets/images/0005.jpg",
      'old_price': 3000,
      'price': 3000,
    },
    {
      'name': "long sleeves Blouse",
      'picture': "assets/images/0006.jpg",
      'old_price': 2500,
      'price': 2500,
    },
    {
      'name': "short sleeves Blouse ",
      'picture': "assets/images/0007.jpg",
      'old_price': 3000,
      'price': 3000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldPrice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

// ignore: camel_case_types
class single_prod extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final prod_name;
  final prod_picture;
  final prod_oldPrice;
  final prod_price;
  single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldPrice,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    product_name: prod_name,
                    product_new_price: prod_price,
                    product_old_price: prod_price,
                    product_picture: prod_picture,
                  ),
                ),
              ),
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                  ),
                  title: Text(
                    "\Rs.$prod_price",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.red,
                        fontSize: 12.0),
                  ),
                  // subtitle: Text(
                  //   "\Rs.$prod_oldPrice",
                  //   style: TextStyle(fontWeight: FontWeight.bold),
                  // ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
