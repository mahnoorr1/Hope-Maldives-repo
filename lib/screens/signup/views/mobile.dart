part of '../signup.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

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
      child: SingleChildScrollView(
        padding: Responsive.isTablet(context) ? Space.all(8, 1) : Space.all(1),
        child: FormBuilder(
          key: state.signUpFormState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                StaticAssets.logo,
                height: AppDimensions.normalize(30),
              ),
              Space.y!,
              Text(
                'Sign Up',
                style: AppText.h1b,
              ),
              Space.y!,
              Text(
                'Contrary to popular belief, Lorem Ipsum is not simply .',
                style: AppText.b2!.copyWith(
                  color: AppTheme.c!.text,
                ),
              ),
              Space.y2!,
              CustomTextField(
                name: 'name',
                hint: 'Full name',
                textInputType: TextInputType.name,
                textCapitalization: TextCapitalization.sentences,
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
                validatorFtn: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Password is required',
                  ),
                  FormBuilderValidators.min(
                    6,
                    errorText: 'Password cannot be less than 6 characters',
                  ),
                ]),
              ),
              Space.y!,
              CustomTextField(
                name: 'confirm',
                hint: 'Confirm Password',
                isPass: true,
                textInputType: TextInputType.text,
                validatorFtn: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Confirm password is required',
                  ),
                ]),
              ),
              Space.y!,
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
              Space.y1!,
              FormBuilderCheckbox(
                activeColor: AppTheme.c!.primary,
                name: 'terms',
                title: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'I agree that I have read and accepted the ',
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
              Space.y1!,
              AppButton(
                child: Text(
                  'Create an Account',
                  style: AppText.b1!.copyWith(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  final formState = state.signUpFormState.currentState;
                  if (formState!.validate()) {
                    FocusScope.of(context).unfocus();

                    String password =
                        formState.fields['password']!.value.toString().trim();
                    String confirm =
                        formState.fields['confirm']!.value.toString().trim();
                    String fullName =
                        formState.fields['name']!.value.toString().trim();
                    String email =
                        formState.fields['email']!.value.toString().trim();

                    if (password != confirm) {
                      CustomSnackBars.failure(
                        context,
                        'Password mismatch, please re-check and try again!',
                      );
                    } else {
                      authCubit.signup(fullName, email, password);
                    }
                  }
                },
              ),
              Space.y2!,
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style: AppText.l1,
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Login',
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
