part of '../signup.dart';

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
          builder: (context, state) {
            if (state is AuthSignUpLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
          listener: (context, state) {
            if (state is AuthSignUpFailed) {
              CustomSnackBars.failure(
                context,
                state.message!,
                title: 'Sign up Failed!',
              );
            } else if (state is AuthSignUpSuccess) {
              Navigator.pop(context);
              CustomSnackBars.success(
                context,
                'Account has been created successfully. Please verify your email and login.',
                title: 'Account Created!',
              );
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
                    StaticAssets.eat1,
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
                  Image.asset(
                    StaticAssets.logo,
                    height: AppDimensions.normalize(50),
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
                height: AppDimensions.normalize(210),
                decoration: UIProps.boxCard,
                child: FormBuilder(
                  key: state.signUpFormState,
                  child: SingleChildScrollView(
                    padding: Space.all(2, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Space.y1!,
                        Text(
                          'Welcome to the Hop Maldives',
                          style: AppText.l1!.copyWith(
                            color: AppTheme.c!.primary,
                          ),
                        ),
                        Text(
                          'Create an Account',
                          style: AppText.h1b,
                        ),
                        Space.y!,
                        Row(
                          children: [
                            const Text(
                              'Already have an account?',
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                'Sign in',
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
                              errorText: 'Invalid email format',
                            ),
                          ]),
                        ),
                        Space.y!,
                        CustomTextField(
                          name: 'name',
                          hint: 'Full name',
                          textInputType: TextInputType.name,
                          validatorFtn: FormBuilderValidators.required(
                            errorText: 'Full name is required',
                          ),
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
                            'Sign up',
                            style: AppText.b1!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            final formState =
                                state.signUpFormState.currentState;
                            if (formState!.validate()) {
                              FocusScope.of(context).unfocus();

                              String password = formState
                                  .fields['password']!.value
                                  .toString()
                                  .trim();
                              String fullName = formState.fields['name']!.value
                                  .toString()
                                  .trim();
                              String email = formState.fields['email']!.value
                                  .toString()
                                  .trim();

                              authCubit.signup(fullName, email, password);
                            }
                          },
                        ),
                        Space.y!,
                        FormBuilderCheckbox(
                          activeColor: AppTheme.c!.primary,
                          name: 'terms',
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text:
                                    'I agree that I have read and accepted the ',
                                style: AppText.l1!.copyWith(
                                  color: AppTheme.c!.text,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of use ',
                                style: AppText.l1b!.copyWith(
                                  color: AppTheme.c!.primary,
                                ),
                              ),
                              TextSpan(
                                text: ' and',
                                style: AppText.l1!.copyWith(
                                  color: AppTheme.c!.text,
                                ),
                              ),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: AppText.l1b!.copyWith(
                                  color: AppTheme.c!.primary,
                                ),
                              ),
                            ]),
                          ),
                          validator: FormBuilderValidators.required(
                            errorText: 'Please agree to terms and conditions',
                          ),
                        ),
                      ],
                    ),
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
