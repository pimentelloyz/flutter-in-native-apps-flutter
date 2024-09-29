import 'package:flutter/material.dart';

import '../../share/utils/mrnt_color.dart';
import '../helpers/helpers.dart';

void showSuccessMessage(BuildContext context, String error) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(seconds: 5),
    backgroundColor: AppColors.tertiary,
    content: Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 24.0, left: 16.0),
            child: Icon(
              Icons.done,
              size: 20,
              color: AppColors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              R.string.success,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 24),
            child: Text(
              R.string.tokenUpdated,
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
