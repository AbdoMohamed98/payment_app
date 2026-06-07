import 'package:flutter/material.dart';

class Paymentconfirmationview extends StatelessWidget {
  const Paymentconfirmationview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            /// Back Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    /// Receipt Card
                    Container(
                      width: 340,
                      margin: const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.fromLTRB(
                        18,
                        60,
                        18,
                        24,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffEAEAEA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Thank you!",
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Your transaction was successful",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: 35),

                          _buildInfoRow(
                            "Date",
                            "01/24/2023",
                          ),

                          const SizedBox(height: 15),

                          _buildInfoRow(
                            "Time",
                            "10:15 AM",
                          ),

                          const SizedBox(height: 15),

                          _buildInfoRow(
                            "To",
                            "Sam Louis",
                          ),

                          const SizedBox(height: 25),

                          const Divider(
                            color: Colors.grey,
                          ),

                          const SizedBox(height: 20),

                          _buildInfoRow(
                            "Total",
                            "\$50.97",
                            isTotal: true,
                          ),

                          const SizedBox(height: 30),

                          /// Payment Method
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red,
                                ),

                                Transform.translate(
                                  offset: const Offset(-8, 0),
                                  child: const CircleAvatar(
                                    radius: 10,
                                    backgroundColor:
                                        Colors.orange,
                                  ),
                                ),

                                const SizedBox(width: 8),

                                const Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Credit Card",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "Mastercard **78",
                                      style: TextStyle(
                                        color:
                                            Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 30),

                          /// Dashed Line
                          Row(
                            children: List.generate(
                              40,
                              (index) => Expanded(
                                child: Container(
                                  height: 1,
                                  color: index.isEven
                                      ? Colors.grey
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 35),

                          /// Barcode + Paid
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 120,
                                height: 60,
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "||||||||||||||||",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(
                                    12,
                                  ),
                                  border: Border.all(
                                    color: Colors.green,
                                  ),
                                ),
                                child: const Text(
                                  "PAID",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /// Success Icon
                    Positioned(
                      top: 0,
                      left: 120,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff39A949),
                        ),
                        child: const Icon(
                          Icons.check,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    /// Receipt Cuts
                    Positioned(
                      left: -15,
                      bottom: 140,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Color(0xffF4F4F4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),

                    Positioned(
                      right: -15,
                      bottom: 140,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Color(0xffF4F4F4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildInfoRow(
    String title,
    String value, {
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}