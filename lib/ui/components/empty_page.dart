import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  final String? message;
  final IconData? icon;

  const EmptyPage({
    super.key,
    this.message,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 80,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 137, 137, 137),
            size: 32,
          ),
          Text(
            message ?? '',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 137, 137, 137),
            ),
          ),
        ],
      ),
    );
  }
}
