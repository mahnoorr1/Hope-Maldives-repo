part of '../login.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
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

    final size = MediaQuery.of(context).size;

    final state = AppProvider.state(context);
    final authCubit = AuthCubit.cubit(context);

    return Screen(
      overlayWidgets: [
        BlocConsumer<AuthCubit, AuthState>(
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
            }
            if (authState is AuthLoginSuccess) {
              state.loginFormState.currentState!.reset();

              await _fetchData();
            }
          },
        ),
      ],
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: AppDimensions.size!.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    StaticAssets.beach,
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.black45,
                    BlendMode.srcOver,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Image.asset(
                      StaticAssets.logo,
                      height: AppDimensions.normalize(50),
                    ),
                  ),
                  Text(
                    'HOP\nMALDIVES',
                    style: AppText.h1b!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: Space.hf(
                size.width >= 1200 ? size.width * 0.005 : size.width * 0.003,
              ),
              child: Container(
                padding: Space.all(2, 1),
                height: AppDimensions.normalize(200),
                decoration: UIProps.boxCard,
                child: FormBuilder(
                  key: state.loginFormState,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Sign in',
                        style: AppText.h1b,
                      ),
                      Space.y!,
                      Row(
                        children: [
                          const Text(
                            'New User?',
                          ),
                          TextButton(
                            onPressed: () => Navigator.pushNamed(
                              context,
                              AppRoutes.signup,
                            ),
                            child: const Text(
                              'Create an account',
                            ),
                          )
                        ],
                      ),
                      Space.y1!,
                      CustomTextField(
                        name: 'email',
                        hint: 'Email address',
                        textInputType: TextInputType.emailAddress,
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
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 750),
                                    reverseTransitionDuration:
                                        const Duration(milliseconds: 750),
                                    transitionsBuilder:
                                        (context, ani1, ani2, child) {
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
                              style: AppText.l1,
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: AppDimensions.normalize(16),
                              child: AppButton(
                                child: Text(
                                  'Sign in',
                                  style: AppText.b2!.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  if (state.loginFormState.currentState!
                                      .validate()) {
                                    FocusScope.of(context).unfocus();

                                    final fields = state
                                        .loginFormState.currentState!.fields;

                                    authCubit.login(
                                      fields['email']!.value.toString().trim(),
                                      fields['password']!
                                          .value
                                          .toString()
                                          .trim(),
                                    );
                                  }
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      Space.y!,
                      Center(
                        child: Text(
                          'Or',
                          style: AppText.l1b,
                        ),
                      ),
                      Space.y1!,
                      _SocialButtonWeb(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              StaticAssets.google,
                              height: AppDimensions.normalize(8),
                            ),
                            Space.x!,
                            Text(
                              'Sign in with Google',
                              style: AppText.b2b,
                            )
                          ],
                        ),
                        onPressed: () => authCubit.googleAuth(),
                      ),
                      Space.y1!,
                      _SocialButtonWeb(
                        child: FittedBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.facebook,
                                color: const Color(0xff4267B2),
                                size: AppDimensions.normalize(9),
                              ),
                              Space.x!,
                              Text(
                                'Sign in with Facebook',
                                style: AppText.b2b,
                              )
                            ],
                          ),
                        ),
                        onPressed: () => authCubit.facebookAuth(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
