import 'package:ai_que_fome_flutter/ui/modules/coupon/coupon_viewmodel.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  final CouponViewmodel viewmodel;
  final VoidCallback onDetailsTap;

  const CouponCard({
    super.key,
    required this.viewmodel,
    required this.onDetailsTap,
  });

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
                  color: viewmodel.isExpired || viewmodel.isOutOfStock
                      ? Colors.grey
                      : Colors.teal,
                  size: 32.0,
                ),
                const SizedBox(height: 4),
                Text(
                  viewmodel.coupon ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: viewmodel.isExpired || viewmodel.isOutOfStock
                        ? Colors.grey
                        : Colors.purple,
                    decoration: viewmodel.isExpired || viewmodel.isOutOfStock
                        ? TextDecoration.lineThrough
                        : null,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            viewmodel.description ?? '',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: viewmodel.isExpired || viewmodel.isOutOfStock
                  ? Colors.grey
                  : Colors.teal,
              decoration: viewmodel.isExpired || viewmodel.isOutOfStock
                  ? TextDecoration.lineThrough
                  : null,
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
                  viewmodel.isExpired
                      ? 'expirado em ${viewmodel.validity}'
                      : viewmodel.isOutOfStock
                          ? 'esgotado'
                          : 'válido até ${viewmodel.validity}',
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
