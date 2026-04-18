import 'package:assignments/screen_with_models/models/item_models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> items = [
      Product(
        name: "Nike Air Max",
        desc: 'Premium Running Shoes',
        image: 'assets/shoe.png',
        deals: '-20%',
        price: 150,
        discount: 120,
        rating: 245,
        color: Colors.redAccent,
      ),
      Product(
        name: "Designer T-Shirt",
        desc: '100% Cotton Premium',
        image: 'assets/tshirt.png',
        deals: 'In Stock',
        price: 60,
        discount: 45,
        rating: 189,
        color: Colors.green,
      ),
      Product(
        name: "Smart Watch",
        desc: 'Fitness Tracking',
        image: 'assets/watch.png',
        deals: 'Hot Deal',
        price: 150,
        discount: 120,
        rating: 245,
        color: Colors.blue,
      ),
      Product(
        name: "Leather HandBag",
        desc: 'Italian Leather',
        image: 'assets/bag.png',
        deals: 'New',
        price: 120,
        discount: 89,
        rating: 98,
        color: Colors.deepPurple,
      ),

      Product(
        name: "Wireless Earbuds",
        desc: 'Noise Cancelling',
        image: 'assets/head.png',
        deals: 'BesrSeller',
        price: 99,
        discount: 79,
        rating: 567,
        color: Colors.pinkAccent,
      ),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final Product item = items[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(5),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: item.color,
                  ),
                  child: Image.asset(item.image),
                ),
                title: Column(
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(item.desc),
                    Text(item.rating.toString()),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text(
                      " \$${item.discount.toString()}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " \$${item.price.toString()}",

                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: item.color,
                      ),
                      child: Text(
                        item.deals,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
