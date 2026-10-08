import 'package:flutter/material.dart';

import '../models/product.dart';

/// A shop category shown in the horizontal category list.
class ShopCategory {
  final String name;
  final IconData icon;
  final Color color;
  const ShopCategory(this.name, this.icon, this.color);
}

const List<ShopCategory> categories = [
  ShopCategory('Electronics', Icons.devices, Color(0xFF3F51B5)),
  ShopCategory('Fashion', Icons.checkroom, Color(0xFFE91E63)),
  ShopCategory('Shoes', Icons.directions_run, Color(0xFFFF9800)),
  ShopCategory('Beauty', Icons.brush, Color(0xFF9C27B0)),
  ShopCategory('Accessories', Icons.watch, Color(0xFF009688)),
  ShopCategory('Home', Icons.chair, Color(0xFF795548)),
];

/// Banner images (publicly available placeholder images).
const List<Map<String, String>> banners = [
  {
    'title': 'Summer Sale',
    'subtitle': 'Up to 50% off',
    'image': 'https://picsum.photos/id/1011/900/400',
  },
  {
    'title': 'New Arrivals',
    'subtitle': 'Fresh styles just landed',
    'image': 'https://picsum.photos/id/1025/900/400',
  },
  {
    'title': 'Electronics Discount',
    'subtitle': 'Gadgets from Rs. 999',
    'image': 'https://picsum.photos/id/1062/900/400',
  },
];

const List<Product> products = [
  // Electronics
  Product(
    name: 'Wireless Headphones',
    category: 'Electronics',
    image: 'https://picsum.photos/id/180/600/600',
    price: 3500,
    oldPrice: 5000,
    rating: 4.5,
    description:
        'Wireless over-ear headphones with high-quality sound, deep bass and 30 hours of battery life.',
  ),
  Product(
    name: 'Laptop Pro 15',
    category: 'Electronics',
    image: 'https://picsum.photos/id/0/600/600',
    price: 85000,
    rating: 4.7,
    isNew: true,
    description:
        'Powerful 15-inch laptop with a fast processor, 16GB RAM and 512GB SSD. Great for study and work.',
  ),
  Product(
    name: 'Smart Watch',
    category: 'Electronics',
    image: 'https://picsum.photos/id/175/600/600',
    price: 6500,
    oldPrice: 8000,
    rating: 4.2,
    description:
        'Track your steps, heart rate and sleep. Water resistant with a bright AMOLED display.',
  ),
  Product(
    name: 'Smartphone X',
    category: 'Electronics',
    image: 'https://picsum.photos/id/160/600/600',
    price: 62000,
    rating: 4.6,
    isNew: true,
    description:
        'Flagship smartphone with an excellent camera, all-day battery and a smooth 120Hz display.',
  ),
  // Fashion
  Product(
    name: 'Casual T-Shirt',
    category: 'Fashion',
    image: 'https://picsum.photos/id/1005/600/600',
    price: 899,
    oldPrice: 1299,
    rating: 4.1,
    description: 'Soft 100% cotton t-shirt with a comfortable regular fit.',
  ),
  Product(
    name: 'Denim Jacket',
    category: 'Fashion',
    image: 'https://picsum.photos/id/1027/600/600',
    price: 3200,
    rating: 4.4,
    isNew: true,
    description: 'Classic blue denim jacket that goes with every outfit.',
  ),
  Product(
    name: 'Summer Dress',
    category: 'Fashion',
    image: 'https://picsum.photos/id/1011/600/600',
    price: 2400,
    oldPrice: 3000,
    rating: 4.3,
    description: 'Light and breezy floral dress, perfect for warm days.',
  ),
  // Shoes
  Product(
    name: 'Running Sneakers',
    category: 'Shoes',
    image: 'https://picsum.photos/id/21/600/600',
    price: 4500,
    oldPrice: 5500,
    rating: 4.6,
    description: 'Lightweight running sneakers with cushioned soles and breathable mesh.',
  ),
  Product(
    name: 'Leather Boots',
    category: 'Shoes',
    image: 'https://picsum.photos/id/103/600/600',
    price: 7200,
    rating: 4.5,
    description: 'Durable genuine leather boots built for style and comfort.',
  ),
  Product(
    name: 'Canvas Shoes',
    category: 'Shoes',
    image: 'https://picsum.photos/id/1060/600/600',
    price: 2100,
    isNew: true,
    rating: 4.0,
    description: 'Everyday canvas shoes in a simple, clean design.',
  ),
  // Beauty
  Product(
    name: 'Face Cream',
    category: 'Beauty',
    image: 'https://picsum.photos/id/225/600/600',
    price: 1200,
    rating: 4.2,
    description: 'Hydrating daily face cream suitable for all skin types.',
  ),
  Product(
    name: 'Perfume 50ml',
    category: 'Beauty',
    image: 'https://picsum.photos/id/312/600/600',
    price: 2800,
    oldPrice: 3500,
    rating: 4.4,
    description: 'A long-lasting fragrance with fresh floral and woody notes.',
  ),
  // Accessories
  Product(
    name: 'Sunglasses',
    category: 'Accessories',
    image: 'https://picsum.photos/id/447/600/600',
    price: 1500,
    oldPrice: 2000,
    rating: 4.3,
    description: 'UV400 protection sunglasses with a lightweight frame.',
  ),
  Product(
    name: 'Travel Backpack',
    category: 'Accessories',
    image: 'https://picsum.photos/id/326/600/600',
    price: 3000,
    isNew: true,
    rating: 4.5,
    description: 'Spacious water-resistant backpack with a padded laptop compartment.',
  ),
  // Home
  Product(
    name: 'Table Lamp',
    category: 'Home',
    image: 'https://picsum.photos/id/1070/600/600',
    price: 1800,
    rating: 4.2,
    description: 'Modern bedside lamp with a warm, soft glow.',
  ),
  Product(
    name: 'Ceramic Vase',
    category: 'Home',
    image: 'https://picsum.photos/id/1080/600/600',
    price: 950,
    oldPrice: 1200,
    rating: 4.1,
    description: 'Handmade ceramic vase to brighten up any room.',
  ),
];
