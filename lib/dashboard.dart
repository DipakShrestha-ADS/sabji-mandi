import 'package:flutter/material.dart';
import 'package:sabji_mandi/modules/dashboard/freshVegetable/fresh_vegetable.dart';
import 'package:sabji_mandi/modules/dashboard/lookingForWidget/looking_for_widget_page.dart';
import 'package:sabji_mandi/modules/dashboard/promos/promos_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 246, 240),
      appBar: AppBar(
        leading: const Icon(
          Icons.shopping_cart,
        ),
        title: const Text(
          "Sabji Mandi Nepal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LookingForWidgetPage(),
            const SizedBox(height: 10),
            PoromsCard(),
            const SizedBox(height: 10),
            const Text(
              "Fresh Vegetables",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            FreshVegetable(),
          ],
        ),
      ),
    );
  }
}
