import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        image: 'lib/assets/images/sugar.jpg',
        stock: 15,
        rating: 4.5,
      ),
      Item(
        name: 'Salt',
        price: 2000,
        image: 'lib/assets/images/salt.jpg',
        stock: 8,
        rating: 4.2,
      ),
      Item(
        name: 'Rice',
        price: 12000,
        image: 'lib/assets/images/rice.jpg',
        stock: 25,
        rating: 4.7,
      ),
      Item(
        name: 'Cooking Oil',
        price: 15000,
        image: 'lib/assets/images/cookoil.jpg',
        stock: 12,
        rating: 4.3,
      ),
      Item(
        name: 'Flour',
        price: 8000,
        image: 'lib/assets/images/flour.jpg',
        stock: 20,
        rating: 4.6,
      ),
      Item(
        name: 'Milk',
        price: 6000,
        image: 'lib/assets/images/milk.jpg',
        stock: 18,
        rating: 4.4,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Marketplace'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // TODO: Implement cart
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.72,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ProductCard(item: items[index]);
              },
            ),
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}
