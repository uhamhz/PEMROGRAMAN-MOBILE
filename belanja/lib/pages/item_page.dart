import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/price_card.dart';
import '../widgets/stock_info.dart';
import '../widgets/rating_display.dart';
import '../widgets/footer.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Product Image
            Hero(
              tag: 'product-${item.name}',
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 80,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),

            // Product Details Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Rating Display Widget
                  RatingDisplay(rating: item.rating),
                  const SizedBox(height: 16),

                  // Price Card Widget
                  PriceCard(price: item.price),
                  const SizedBox(height: 16),

                  // Stock Info Widget
                  StockInfo(stock: item.stock),
                  const SizedBox(height: 24),

                  // Description
                  const Text(
                    'Deskripsi Produk',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Produk ${item.name} berkualitas tinggi dengan harga terjangkau. '
                    'Cocok untuk kebutuhan rumah tangga sehari-hari. '
                    'Memiliki rating ${item.rating} dari pengguna yang puas.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Add to Cart Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: item.stock > 0
                          ? () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '${item.name} ditambahkan ke keranjang!',
                                  ),
                                  backgroundColor: Colors.green,
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.shopping_cart),
                      label: Text(
                        item.stock > 0 ? 'Tambah ke Keranjang' : 'Stok Habis',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            // Footer
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
