import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/product_data.dart';

/// Promotional banner carousel built with the carousel_slider package.
class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 170,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.92,
            onPageChanged: (index, reason) => setState(() => _current = index),
          ),
          items: banners.map((banner) {
            return Builder(
              builder: (context) => ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      banner['image']!,
                      fit: BoxFit.cover,
                      errorBuilder: (c, e, s) =>
                          Container(color: Colors.indigo.shade200),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.black54, Colors.transparent],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            banner['title']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            banner['subtitle']!,
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banners.length, (i) {
            return Container(
              width: _current == i ? 18 : 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _current == i
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey.shade400,
              ),
            );
          }),
        ),
      ],
    );
  }
}
