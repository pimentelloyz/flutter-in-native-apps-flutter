import 'package:ai_que_fome_flutter/infra/channels/event_channels.dart';
import 'package:flutter/material.dart';

import '../../share/utils/mrnt_color.dart';
import '../helpers/helpers.dart';

void showExpiredSessionMessage(BuildContext context, String error) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(seconds: 5),
    backgroundColor: AppColors.error,
    content: Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 16.0),
            child: Icon(
              Icons.sms_failed,
              size: 20,
              color: Theme.of(context).indicatorColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              R.string.expiredToken,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 24),
            child: TextButton(
                onPressed: () {
                  AiQFMChannel.platform?.invokeMethod(
                    'router',
                    {
                      'route': AiqfRouter.sessionExpired.value,
                    },
                  );
                },
                child: const Text(
                  'Atualizar token',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                )),
          ),
        ],
      ),
    ),
  ));
}
