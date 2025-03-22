import 'package:ecommerce_nahid/common/widgets/appbar.dart' show FAppBar;
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
// import '../../../common/widget/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: "Mega Shop", backButton: true),
      body: Column(
        children: [
          // Poster Section
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.blue, // Background color
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Promo Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Gratis Ongkir Selama PPKM!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Periode Mei - Agustus 2021",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
                // Optional: Icon or Illustration
                const Icon(Icons.local_shipping, color: Colors.white, size: 40),
              ],
            ),
          ),
          // Product Card
          Card(
            margin: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/headphone.png', // Ensure the product image is in assets
                    width: 200,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "TMA-2 HD Wireless",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Rp. 1.500.000",
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 5),
                      Text("4.6  86 Reviews"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart_outline),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shopping_bag_outline),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user_add_bold),
            label: "Accounts",
          ),
        ],
      ),
    );
  }
}