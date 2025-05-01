import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/entities/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> products = [
    Product(
        name: 'Product 1',
        price: 10.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 2',
        price: 20.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 3',
        price: 30.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 4',
        price: 40.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 5',
        price: 50.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 6',
        price: 60.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 7',
        price: 70.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 8',
        price: 80.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 9',
        price: 90.0,
        imageUrl: 'https://placehold.co/50x50'),
    Product(
        name: 'Product 10',
        price: 100.0,
        imageUrl: 'https://placehold.co/50x50'),
  ];

  int cartItemCount = 0;

  void addToCart() {
    setState(() {
      cartItemCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dimsum Adeenio'),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: ListView(
                children: [
                  ...products.map((product) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 8.0),
                      child: ListTile(
                        leading: SvgPicture.network(
                          product.imageUrl ?? '',
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.name ?? 'Item'),
                        subtitle: Text('Rp ${product.price}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.add_shopping_cart),
                          onPressed: addToCart,
                        ),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('${product.name} tapped')),
                          );
                        },
                      ),
                    );
                  }),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(8.0))),
                    )
                  ],
                ),
              ),
            ),
            cartItemCount > 0
                ? Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('$cartItemCount item'),
                icon: const Icon(Icons.shopping_cart),
              ),
            )
                : Container()
          ],
        ));
  }
}
