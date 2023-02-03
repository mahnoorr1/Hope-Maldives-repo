import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/space.dart';

// ignore: must_be_immutable
class CodeButton extends StatelessWidget {
  final String code;
  const CodeButton({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppTheme.c!.primary!.withOpacity(0.7),
        shape: const StadiumBorder(),
        side: BorderSide(
          color: AppTheme.c!.primary!,
          width: 2,
        ),
      ),
      onPressed: () {
        Clipboard.setData(ClipboardData(text: code)).then(
          (value) => Fluttertoast.showToast(msg: "Copied to Clipboard"),
        );
      },
      child: Padding(
        padding: Space.all(0.3),
        child: Row(
          children: [
            Text(
              "Code: $code\t",
              textAlign: TextAlign.center,
            ),
            const Icon(Icons.copy,),
          ],
        ),
      ),
    );
  }
}
