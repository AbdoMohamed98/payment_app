import 'package:flutter/material.dart';

class ProductInfoCard extends StatelessWidget {
  const ProductInfoCard(String s, {
    super.key,
    required this.title,
    required this.price,
    required this.quantity,
  });

  final String title;
  final String price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
  top: 50,
  
  left: 135,
  child: SizedBox(
    width: 204,
    height: 120,
    child: Stack(
      children: [
        Image.asset(
          'assets/Group 5.png',
          width: 180,
          fit: BoxFit.fill,
        ),

        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Kinetic Sand Dino\nDig Playset',
                style: TextStyle(fontSize: 14),
              ),

              const Spacer(),

              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.remove, size: 14),
                        SizedBox(width: 8),
                        Text('1'),
                        SizedBox(width: 8),
                        Icon(Icons.add, size: 14),
                      ],
                    ),
                  ),

                  const Spacer(),

                  const Text(
                    '\$19.99',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
 
  }
}