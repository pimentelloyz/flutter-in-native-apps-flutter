import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  final String title;
  final String discount;
  final String validity;
  final bool isExpired;
  final bool isOutOfStock;
  final VoidCallback onDetailsTap;

  const CouponCard({
    Key? key,
    required this.title,
    required this.discount,
    required this.validity,
    this.isExpired = false,
    this.isOutOfStock = false,
    required this.onDetailsTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_activity,
                  color: isExpired || isOutOfStock ? Colors.grey : Colors.teal,
                  size: 32.0,
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:
                        isExpired || isOutOfStock ? Colors.grey : Colors.purple,
                    decoration: isExpired || isOutOfStock
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            discount,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isExpired || isOutOfStock ? Colors.grey : Colors.teal,
              decoration:
                  isExpired || isOutOfStock ? TextDecoration.lineThrough : null,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Divider(),
          Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Texto à esquerda
                Text(
                  isExpired
                      ? 'expirado em $validity'
                      : isOutOfStock
                          ? 'esgotado'
                          : 'válido até $validity',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onDetailsTap,
                      child: const Text(
                        "ver detalhes",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.teal,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
