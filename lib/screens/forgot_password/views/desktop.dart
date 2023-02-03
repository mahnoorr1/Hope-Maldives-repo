part of '../forgot_password.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    final size = MediaQuery.of(context).size;

    final state = AppProvider.state(context);
    final authCubit = AuthCubit.cubit(context);

    return Screen(
      overlayWidgets: [
        BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthForgotPasswordFailed) {
              CustomSnackBars.failure(
                context,
                state.message!,
                title: 'Reset failed!',
              );
            } else if (state is AuthForgotPasswordSuccess) {
              CustomSnackBars.success(
                context,
                'Reset link has been sent to your email address',
              );
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            if (state is AuthForgotPasswordLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
        )
      ],
      child: Padding(
        padding: Space.all(1),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () => Navigator.pop(context),
                ),
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    StaticAssets.logo,
                    height: AppDimensions.normalize(25),
                  ),
                )
              ],
            ),
            Space.y!,
            Expanded(
              child: Row(
                children: [
                  size.width >= 1340 ? const Spacer() : Space.xf(5),
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      StaticAssets.forgot,
                      height: AppDimensions.normalize(140),
                    ),
                  ),
                  size.width >= 1340 ? const Spacer() : Space.xf(5),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: Space.all(2, 1),
                      height: AppDimensions.normalize(170),
                      decoration: UIProps.boxCard,
                      child: FormBuilder(
                        key: state.forgotPasswordState,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: AppText.h1b,
                            ),
                            Space.y!,
                            Text(
                              'We got your back! We will send you a reset link to your registered email and you can setup a new password there!',
                              style: AppText.b2,
                            ),
                            Space.y2!,
                            CustomTextField(
                              name: 'email',
                              hint: 'Enter email address',
                              textInputType: TextInputType.emailAddress,
                              prefixIcon: const Icon(Icons.email),
                              validatorFtn: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: 'Email cannot be empty.'),
                                FormBuilderValidators.email(
                                    errorText: 'Email is invalid!'),
                              ]),
                            ),
                            Space.y1!,
                            AppButton(
                              child: Text(
                                'Reset Password',
                                style: AppText.b2!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                if (state.forgotPasswordState.currentState!
                                    .validate()) {
                                  authCubit.forgotPassword(
                                    state.forgotPasswordState.currentState!
                                        .fields['email']!.value
                                        .toString()
                                        .trim(),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  size.width >= 1340 ? const Spacer() : Space.xf(5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
