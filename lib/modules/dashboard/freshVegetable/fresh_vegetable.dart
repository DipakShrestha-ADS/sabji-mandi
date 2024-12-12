import 'package:flutter/material.dart';
import 'package:sabji_mandi/modules/dashboard/freshVegetable/fresh_vegetable_card.dart';

class FreshVegetable extends StatelessWidget {
  FreshVegetable({super.key});

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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.9,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, index) {
        final sabji = dataArray[index];
        return FreshVegetableCard(
          title: sabji['title'] ?? '',
          imageUrl: sabji["url"] ?? '',
          price: "200",
          unit: "KG",
        );
      },
      itemCount: dataArray.length,
    );
  }
}
