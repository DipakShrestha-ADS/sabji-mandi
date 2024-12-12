import 'package:flutter/material.dart';
import 'package:sabji_mandi/widgets/dashboard_food_card.dart';

class LookingForWidgetPage extends StatelessWidget {
  LookingForWidgetPage({super.key});
  var dataArray = [
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1661811820259-2575b82101bf?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Tomato"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1613743983303-b3e89f8a2b80?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Cauliflower"
    },
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1669652909008-d504f70b8129?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Carrot"
    },
    {
      "url":
          "https://images.unsplash.com/photo-1596910547037-846b1980329f?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Potato"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What are you looking for?",
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          //build all childs at first and align height after calculation
          shrinkWrap: true,
          //restrict sroll feature
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, index) {
            final data = dataArray[index];
            return DashboardFoodCard(
              imageUrl: data['url'] ?? "",
              title: data['title'] ?? "N/A",
            );
          },
          itemCount: dataArray.length,
        ),
      ],
    );
  }
}
