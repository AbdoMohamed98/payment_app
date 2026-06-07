import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout_payment/presentation/widgets/productinfocard.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
  child: Center(
    child: SizedBox(
      width: 277,
      height: 424,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Basket
          Positioned.fill(
            child: Image.asset(
              "assets/15549540_5623839 2.png",
              fit: BoxFit.contain,
            ),
          ),

          // Product 1
          Positioned(
            top: 100,
            left: 45,
            child: Image.asset(
              "assets/image 11.png",
              width: 90,
            ),
          ),

          // Product 2
          Positioned(
            top: 180,
            left: 105,
            child: Image.asset(
              "assets/Mask group.png",
              width: 110,
            ),
          ),

          // Product 3
          Positioned(
            top: 285,
            left: 65,
            child: Image.asset(
              "assets/image 10.png",
              width: 120,
            ),
          ),

          // Floating Product Card
          Positioned(
            top: 70,
            right: -70, // move outside the basket
            child: ProductInfoCard(
              'jdhghdslh',
              title: "Kinetic Sand Dino\nDig Playset",
              price: "\$19.99",
              quantity: 1,
            ),
          ),
        ],
      ),
    ),
  ),
),

            const SizedBox(height: 10),

            _summaryRow(
              title: "Order Subtotal",
              value: "\$42.97",
            ),

            const SizedBox(height: 8),

            _summaryRow(
              title: "Discount",
              value: "\$0",
            ),

            const SizedBox(height: 8),

            _summaryRow(
              title: "Shipping",
              value: "\$8",
            ),

            const SizedBox(height: 15),

            const Divider(),

            const SizedBox(height: 15),

            _summaryRow(
              title: "Total",
              value: "\$50.97",
              isBold: true,
              fontSize: 18,
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff36A94B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Complete Payment",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _summaryRow({
    required String title,
    required String value,
    bool isBold = false,
    double fontSize = 16,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight:
                isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight:
                isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}