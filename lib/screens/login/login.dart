import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hop_maldives/app_routes.dart';
import 'package:hop_maldives/configs/app.dart';
import 'package:hop_maldives/cubits/chat/cubit.dart';
import 'package:hop_maldives/cubits/discover/cubit.dart';
import 'package:hop_maldives/cubits/diving/cubit.dart';
import 'package:hop_maldives/cubits/excursion/cubit.dart';
import 'package:hop_maldives/cubits/hotels/cubit.dart';
import 'package:hop_maldives/cubits/islands/cubit.dart';
import 'package:hop_maldives/cubits/request/cubit.dart';
import 'package:hop_maldives/cubits/resorts/cubit.dart';
import 'package:hop_maldives/cubits/tour/cubit.dart';
import 'package:hop_maldives/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/auth/cubit.dart';
import 'package:hop_maldives/widgets/screen/screen.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/custom_text_field.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hop_maldives/widgets/loader/full_screen_loader.dart';
import 'package:hop_maldives/screens/forgot_password/forgot_password.dart';

part 'views/mobile.dart';
part 'views/desktop.dart';

part 'views/widgets/_social_button_web.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
