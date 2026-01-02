import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/banner_slider.dart';
import '../widgets/product_card.dart';
import '../data/dummy_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Amazon"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSearchBar(),
            const BannerSlider(),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
