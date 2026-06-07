import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

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
          "Payment Details",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 10),

            /// Payment Methods
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _paymentMethod(
                  selected: true,
                  child: Image.asset(
                    "assets/Vector.png",
                    width: 50,
                  ),
                ),
                _paymentMethod(
                  child: Image.asset(
                    "assets/Group.png",
                    width: 70,
                  ),
                ),
                _paymentMethod(
                  child: Image.asset(
                    "assets/SVGRepo_iconCarrier.png",
                    width: 50,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            /// Card Slider
            SizedBox(
              height: 190,
              child: PageView(
                children: const [
                  CreditCardWidget(),
                  CreditCardWidget(),
                  CreditCardWidget(),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _dot(true),
                _dot(false),
                _dot(false),
              ],
            ),

            const SizedBox(height: 30),

            /// Card Number
            const _Label("Card Number"),

            const SizedBox(height: 8),

            const _ValueField(
              value: "1234    5678    1234    5678",
            ),

            const SizedBox(height: 25),

            Row(
              children: const [
                Expanded(
                  child: InfoField(
                    label: "Name",
                    value: "Sam Louis",
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: InfoField(
                    label: "Card ID",
                    value: "Mastercard",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            Row(
              children: const [
                Expanded(
                  child: InfoField(
                    label: "Expiration Date",
                    value: "07/29",
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: InfoField(
                    label: "CVV",
                    value: "215",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff39A949),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Pay",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget _paymentMethod({
    required Widget child,
    bool selected = false,
  }) {
    return Container(
      width: 102,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: selected
              ? Colors.green
              : Colors.grey.shade400,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: child),
    );
  }

  static Widget _dot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: active ? 10 : 8,
      height: active ? 10 : 8,
      decoration: BoxDecoration(
        color: active
            ? Colors.black
            : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          colors: [
            Color(0xffD9E8D0),
            Color(0xffF9C56E),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Credit",
                style: TextStyle(fontSize: 18),
              ),
              Spacer(),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.red,
              ),
              SizedBox(width: 4),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.orange,
              ),
            ],
          ),

          const Spacer(),

          const Text(
            "1234  5678  1234  5678",
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 2,
            ),
          ),

          const Spacer(),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: const [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card Holder",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    "Sam Louis",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Expires",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    "07/29",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "CVV",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    "215",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoField extends StatelessWidget {
  final String label;
  final String value;

  const InfoField({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 1,
          color: Colors.grey.shade400,
        ),
      ],
    );
  }
}

class _Label extends StatelessWidget {
  final String text;

  const _Label(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 16,
        ),
      ),
    );
  }
}

class _ValueField extends StatelessWidget {
  final String value;

  const _ValueField({
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 1,
          color: Colors.grey.shade400,
        ),
      ],
    );
  }
}