import 'package:flutter/material.dart';

class StockInfo extends StatelessWidget {
  final int stock;

  const StockInfo({Key? key, required this.stock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLowStock = stock <= 10;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isLowStock ? Colors.red[50] : Colors.green[50],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isLowStock ? Colors.red[300]! : Colors.green[300]!,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: (isLowStock ? Colors.red : Colors.green).withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isLowStock ? Colors.red[700] : Colors.green[700],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.inventory_2, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ketersediaan Stok',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$stock items tersedia',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isLowStock ? Colors.red[800] : Colors.green[800],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: isLowStock ? Colors.red[700] : Colors.green[700],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              isLowStock ? 'Stok Terbatas' : 'Tersedia',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
