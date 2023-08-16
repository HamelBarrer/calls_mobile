import 'package:calls_mobile/constants/view_constant.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextButtonWidget extends HookConsumerWidget {
  final VoidCallback onPressed;
  final String buttonName;

  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: const TextStyle(
          color: CustomColors.blue100,
        ),
      ),
    );
  }
}
