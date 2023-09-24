import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'core i7',
      price: 19.99,
    ),
    Product(
      name: 'core i9',
      price: 30,
    ),
    Product(
      name: 'GTX1080',
      price: 40,
    ),
    Product(
      name: 'GTX3090',
      price: 90,
    ),
    Product(
      name: 'RAM8GB',
      price: 70,
    ),
    Product(
      name: 'RAM4GB',
      price: 100,
    ),
    Product(
      name: 'sumsung 144Hz',
      price: 120,
    ),
    Product(
      name: 'lenovo 144Hz',
      price: 80,
    ),
    Product(
      name: 'case dell',
      price: 70,
    ),
    Product(
      name: 'case lenovo',
      price: 120,
    ),
    Product(
      name: 'mouse logitech',
      price: 40,
    ),
    Product(
      name: 'keyboard logitech',
      price: 50,
    ),
    Product(
      name: 'mouse monster',
      price: 60,
    ),
    Product(
      name: 'keyboard monster',
      price: 70,
    ),
    Product(
      name: 'headset logitech',
      price: 80,
    ),
    Product(
      name: 'headset monster',
      price: 90,
    ),

    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page'), backgroundColor:Color.fromARGB(255, 255, 81, 0) ,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add the product to the shopping cart
              },
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({
    required this.name,
    required this.price,
  });
}