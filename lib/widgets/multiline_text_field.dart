import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';

class CustomMultiLineTextField extends StatelessWidget {
  final TextInputAction? textInputAction;
  final String name;
  final bool? enabled;
  final FocusNode? node;
  final String? hint;
  final double? width;
  final String? initialValue;

  final String? Function(String?)? validatorFtn;
  final String? Function(String?)? onChangeFtn;

  const CustomMultiLineTextField({
    Key? key,
    this.enabled,
    this.initialValue,
    this.validatorFtn,
    this.onChangeFtn,
    this.width = double.infinity,
    this.textInputAction = TextInputAction.done,
    this.node,
    required this.name,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.normalize(250),
      child: FormBuilderTextField(
        maxLines: 6,
        enabled: enabled ?? true,
        initialValue: initialValue,
        name: name,
        autofocus: false,
        textInputAction: textInputAction,
        keyboardType: TextInputType.multiline,
        focusNode: node,
        decoration: InputDecoration(
          filled: true,
          contentPadding: Space.all(0.75, 0.9),
          hintText: hint,
          hintStyle: AppText.l1!.copyWith(
            color: AppTheme.c!.textSub2,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: AppTheme.c!.primary!,
              width: AppDimensions.normalize(0.75),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.red.withAlpha(200),
              width: AppDimensions.normalize(0.75),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.red.withAlpha(200),
              width: AppDimensions.normalize(0.75),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: AppDimensions.normalize(0.75),
              color: AppTheme.c!.textSub!.withAlpha(100),
            ),
          ),
        ),
        validator: validatorFtn,
        onChanged: onChangeFtn,
      ),
    );
  }
}
