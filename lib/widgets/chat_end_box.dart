import 'package:flutter/material.dart';
import 'package:hop_maldives/cubits/chat/cubit.dart';
import 'package:hop_maldives/responsive/responsive.dart';

import '../configs/configs.dart';

class ChatEndBox {
  static warning(BuildContext context, ChatCubit chatCubit) {
    return showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        insetPadding: !Responsive.isMobile(context)
            ? Space.hf(12)
            : const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
        title: Text(
          'End Chat!',
          style: AppText.h3b,
        ),
        content: Text(
          'Are you sure you want to end the chat session? All the messages will be deleted!',
          style: AppText.b2,
        ),
        actions: [
          TextButton(
            onPressed: () {
              chatCubit.clean();
              if (Responsive.isMobile(context)) {
                Navigator.pop(context);
                Navigator.pop(context);
              } else {
                Navigator.pop(context, true);
              }
            },
            child: Text(
              'Yes',
              style: AppText.b2b,
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              'No',
              style: AppText.b2b!.copyWith(
                color: AppTheme.c!.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
