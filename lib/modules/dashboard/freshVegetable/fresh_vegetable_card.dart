import 'package:flutter/material.dart';

class FreshVegetableCard extends StatelessWidget {
  const FreshVegetableCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.unit,
  });
  final String imageUrl;
  final String title;
  final String price;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 5,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.network(
                      imageUrl,
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      height: 80,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 60,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(163, 128, 249, 213),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Fresh",
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Rs.$price/$unit",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.teal.shade700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            elevation: 2,
            mini: true,
            child: const Icon(
              Icons.add,
              color: Colors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
