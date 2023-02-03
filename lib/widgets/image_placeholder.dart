import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/app_typography.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '...',
        style: AppText.b2b!.copyWith(
          color: Colors.grey,
        ),
      ),
    );
  }
}
