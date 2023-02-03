part of '../login.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  Future<void> _fetchData() async {
    if (!mounted) return;
    ChatCubit.c(context).fetch();
    RequestCubit.c(context).fetch();

    await AuthCubit.cubit(context).fetch();
    if (!mounted) return;
    await HotelsCubit.c(context).fetch();

    if (!mounted) return;
    await IslandsCubit.c(context).fetch();

    if (!mounted) return;
    await ResortsCubit.c(context).fetch();

    if (!mounted) return;
    await TourCubit.c(context).fetch();

    if (!mounted) return;
    await DiscoverCubit.cubit(context).fetch();

    if (!mounted) return;
    await DivingCubit.c(context).fetch();

    if (!mounted) return;
    await ExcursionCubit.c(context).fetch();

    if (!mounted) return;
    Navigator.pushNamed(context, AppRoutes.dashboard);
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final state = AppProvider.state(context);
    final authCubit = AuthCubit.cubit(context);

    return Screen(
      overlayWidgets: [
        BlocConsumer<AuthCubit, AuthState>(
          listenWhen: (a, b) => a != b,
          builder: (context, authState) {
            if (authState is AuthLoginLoading ||
                authState is GoogleAuthLoading ||
                authState is FacebookAuthLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
          listener: (context, authState) async {
            if (authState is AuthLoginFailed) {
              CustomSnackBars.failure(
                context,
                authState.message!,
                title: 'Error!',
              );
            } else if (authState is AuthLoginSuccess ||
                authState is GoogleAuthSuccess ||
                authState is FacebookAuthSuccess) {
              state.index = 0;
              state.loginFormState.currentState!.reset();

              await _fetchData();
            }
          },
        ),
      ],
      child: SingleChildScrollView(
        padding: Responsive.isTablet(context) ? Space.all(7, 1) : Space.all(1),
        child: FormBuilder(
          key: state.loginFormState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  StaticAssets.logo,
                  height: AppDimensions.normalize(30),
                ),
              ),
              Space.y!,
              Text(
                'Welcome to\nHop Maldives',
                style: AppText.h1b,
              ),
              Space.y!,
              Text(
                'Your one-stop shop and guide for venturing forth into the Maldives.',
                style: AppText.b2!.copyWith(
                  color: AppTheme.c!.text,
                ),
              ),
              Space.y2!,
              CustomTextField(
                name: 'email',
                hint: 'Email address',
                textInputType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                validatorFtn: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Email is required',
                  ),
                  FormBuilderValidators.email(
                    errorText: 'Email format is invalid',
                  ),
                ]),
              ),
              Space.y!,
              CustomTextField(
                name: 'password',
                hint: 'Password',
                isPass: true,
                textInputType: TextInputType.text,
                validatorFtn: FormBuilderValidators.required(
                  errorText: 'Password is required',
                ),
              ),
              Space.y1!,
              AppButton(
                child: Text(
                  'Login',
                  style: AppText.b1!.copyWith(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (state.loginFormState.currentState!.validate()) {
                    FocusScope.of(context).unfocus();

                    final fields = state.loginFormState.currentState!.fields;

                    authCubit.login(
                      fields['email']!.value.toString().trim(),
                      fields['password']!.value.toString().trim(),
                    );
                  }
                },
              ),
              Space.y!,
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 750),
                        reverseTransitionDuration:
                            const Duration(milliseconds: 750),
                        transitionsBuilder: (context, ani1, ani2, child) {
                          return FadeTransition(
                            opacity: ani1,
                            child: child,
                          );
                        },
                        pageBuilder: (context, a1, a2) =>
                            const ForgotPasswordScreen()),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: AppText.l1b,
                ),
              ),
              Space.y!,
              AppButton(
                color: state.isDark ? Colors.grey[850] : Colors.grey[200],
                child: Row(
                  children: [
                    Space.x1!,
                    SvgPicture.asset(
                      StaticAssets.google,
                      height: AppDimensions.normalize(8.5),
                    ),
                    Space.xm!,
                    Text(
                      'Continue with Google',
                      style: AppText.b2,
                    ),
                    Space.xm!,
                    Space.x2!,
                  ],
                ),
                onPressed: () => authCubit.googleAuth(),
              ),
              Space.y1!,
              AppButton(
                color: state.isDark ? Colors.grey[850] : Colors.grey[200],
                child: Row(
                  children: [
                    Space.x1!,
                    const Icon(
                      FontAwesomeIcons.facebook,
                      color: Color(0xff4267B2),
                    ),
                    Space.xm!,
                    Text(
                      'Continue with Facebook',
                      style: AppText.b2,
                    ),
                    Space.xm!,
                    Space.x2!,
                  ],
                ),
                onPressed: () => authCubit.facebookAuth(),
              ),
              Space.y1!,
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: AppText.l1,
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.signup),
                      child: Text(
                        'Sign Up',
                        style: AppText.l1b,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
