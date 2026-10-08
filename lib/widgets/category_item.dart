import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../screens/category_page.dart';

/// A single tappable category shown in the horizontal list.
class CategoryItem extends StatelessWidget {
  final ShopCategory category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(categoryName: category.name),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: category.color.withOpacity(0.15),
              child: Icon(category.icon, color: category.color, size: 28),
            ),
            const SizedBox(height: 6),
            Text(
              category.name,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
