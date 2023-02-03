import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/configs/app_dimensions.dart';
import 'package:hop_maldives/configs/app_theme.dart';
import 'package:hop_maldives/configs/app_typography.dart';
import 'package:hop_maldives/configs/space.dart';
import 'package:hop_maldives/configs/ui_props.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/custom_text_field.dart';
import 'package:hop_maldives/widgets/loader/full_screen_loader.dart';
import 'package:hop_maldives/widgets/screen/screen.dart';

part 'views/mobile.dart';
part 'views/desktop.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Screen(
        child: Scaffold(
          body: SafeArea(
            child: Responsive(
              mobile: Mobile(),
              tablet: Mobile(),
              desktop: Desktop(),
            ),
          ),
        ),
      ),
    );
  }
}
