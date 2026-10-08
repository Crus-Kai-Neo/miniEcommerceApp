import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../widgets/product_card.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    // Filter products by the selected category
    final filtered =
        products.where((p) => p.category == categoryName).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: filtered.isEmpty
          ? Center(child: Text('No products in $categoryName yet'))
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filtered.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (context, index) =>
                  ProductCard(product: filtered[index]),
            ),
    );
  }
}
