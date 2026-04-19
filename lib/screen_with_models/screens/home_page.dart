import 'package:assignments/screen_with_models/models/item_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> items = [
      Product(
        name: "Nike Air Max 2024",
        subtitle: 'Premium Running Shoes',
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
        image: 'assets/shoe.png',
        deals: '20%',
        actualprice: 150,
        discountprice: 120,
        rating: 245,
        color: Colors.redAccent,
        features: [
          'Air Max Cushioning for comfort',
          'Lighweight breathable mesh',
          'Durable rubber sole',
          'Available in 5 colors',
        ],
      ),
      Product(
        name: "Designer T-Shirt",
        subtitle: '100% Cotton Premium',
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
        image: 'assets/tshirt.png',
        deals: 'In Stock',
        actualprice: 60,
        discountprice: 45,
        rating: 189,
        color: Colors.green,
        features: [
          'Neckline Cut',
          'Lighweight breathable material',
          'Durable and stretchy',
          'Available in 5 colors',
        ],
      ),
      Product(
        name: "Smart Watch",
        subtitle: 'Fitness Tracking',
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
        image: 'assets/watch.png',
        deals: 'Hot Deal',
        actualprice: 150,
        discountprice: 120,
        rating: 245,
        color: Colors.blue,
        features: [
          'Track your steps',
          'Lighweight material',
          'Durable rubber sole',
          'Available in 5 colors',
        ],
      ),
      Product(
        name: "Leather HandBag",
        subtitle: 'Italian Leather',
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
        image: 'assets/bag.png',
        deals: 'New',
        actualprice: 120,
        discountprice: 89,
        rating: 98,
        color: Colors.deepPurple,
        features: [
          'Made from high quality leather ',
          'Lighweight ',
          'Durable ',
          'Available in 5 colors',
        ],
      ),

      Product(
        name: "Wireless Earbuds",
        subtitle: 'Noise Cancelling',
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
        image: 'assets/head.png',
        deals: 'BestSeller',
        actualprice: 99,
        discountprice: 79,
        rating: 567,
        color: Colors.pinkAccent,
        features: [
          'Active Noise Cancellation',
          'Lighweight ',
          'Durable',
          'Long-lasting battery life',
        ],
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
              padding: const EdgeInsets.all(12.0),
              child: ListTile(
                visualDensity: VisualDensity(vertical: 4),
                leading: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      item.subtitle,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.blueGrey,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          ignoreGestures: true,
                          allowHalfRating: false,
                          itemCount: 4,
                          itemSize: 10,
                          itemPadding: EdgeInsets.zero,
                          itemBuilder: (context, _) =>
                              Icon(Icons.star, color: Colors.yellow[800]),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),

                        Text(
                          "(${item.rating})",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.yellow[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text(
                      " \$${item.discountprice.toString()}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " \$${item.actualprice.toString()}",
                      style: TextStyle(
                        fontSize: 12,
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
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/details', arguments: item);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
