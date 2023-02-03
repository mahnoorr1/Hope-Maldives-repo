part of '../tour_booking.dart';

class Mobile extends StatelessWidget {
  final Tour tour;
  const Mobile({
    Key? key,
    required this.tour,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    final state = AppProvider.state(context);
    final authData = AuthCubit.cubit(context);
    final requestCubit = RequestCubit.c(context);

    return Screen(
      overlayWidgets: [
        BlocConsumer<RequestCubit, RequestState>(
          listener: (context, state) {
            if (state.send is RequestSendFailed) {
              CustomSnackBars.failure(
                context,
                state.send!.message!,
              );
            } else if (state.send is RequestSendSuccess) {
              CustomSnackBars.success(
                context,
                'Request has been sent successfully, You will be responded soon!',
              );
              Navigator.popUntil(
                context,
                (route) => route.settings.name! == AppRoutes.dashboard,
              );
            }
          },
          builder: (context, state) {
            if (state.send is RequestSendLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
        )
      ],
      child: SingleChildScrollView(
        padding: Space.all(0.75),
        child: FormBuilder(
          key: state.bookingFormState,
          initialValue: {
            'name': authData.state.data!.fullName,
            'email': authData.state.data!.email,
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'Tour Booking',
                    style: AppText.h2b,
                  )
                ],
              ),
              Space.y2!,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(UIProps.radius),
                    child: CachedNetworkImage(
                      imageUrl: tour.images.first,
                      fit: BoxFit.cover,
                      height: AppDimensions.normalize(40),
                      width: AppDimensions.normalize(35),
                    ),
                  ),
                  Space.x!,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Space.y1!,
                        Text(
                          tour.name,
                          style: AppText.h3b,
                        ),
                        Space.y!,
                        Row(
                          children: [
                            const Icon(
                              Icons.pin_drop_outlined,
                              color: Colors.grey,
                            ),
                            Space.x!,
                            Expanded(
                              child: Text(
                                tour.place,
                                style: AppText.b2!.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: AppDimensions.normalize(10),
              ),
              Text(
                'Guest Details',
                style: AppText.b2b,
              ),
              Space.y!,
              DropdownButtonHideUnderline(
                child: FormBuilderDropdown(
                  validator: FormBuilderValidators.required(
                    errorText: 'Title cannot be empty',
                  ),
                  name: 'title',
                  items: ['Mr', 'Mrs', 'Ms', 'Miss']
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  decoration: InputDecoration(
                    hintText: 'Choose title',
                    filled: true,
                    contentPadding: Space.all(0.75, 0.9),
                    hintStyle: AppText.b2!.copyWith(
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
                ),
              ),
              Space.y!,
              const CustomTextField(
                name: 'name',
                hint: 'Full name',
                textInputType: TextInputType.name,
              ),
              Space.y!,
              const CustomTextField(
                name: 'email',
                hint: 'Email address',
                textInputType: TextInputType.emailAddress,
              ),
              Space.y1!,
              Text(
                'Deadline date',
                style: AppText.b2b,
              ),
              Text(
                'Last date to send request for this tour.',
                style: AppText.l2!.copyWith(
                  fontSize: AppDimensions.normalize(4.5),
                ),
              ),
              Space.y!,
              Text(
                DateFormat('dd MMM, yyyy').format(tour.deadline),
                style: AppText.b2b!.copyWith(
                  color: Colors.red,
                ),
              ),
              Divider(
                height: AppDimensions.normalize(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price',
                    style: AppText.h2b,
                  ),
                  Text(
                    App.format(tour.price),
                    style: AppText.h2,
                  ),
                ],
              ),
              Space.y1!,
              AppButton(
                child: Text(
                  'Send Request',
                  style: AppText.b2!.copyWith(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (state.bookingFormState.currentState!.validate()) {
                    final fields = state.bookingFormState.currentState!.fields;

                    Request request = Request(
                      id: App.id(),
                      userId: authData.state.data!.id,
                      title: fields['title']!.value.toString().trim(),
                      fullName: fields['name']!.value.toString().trim(),
                      email: fields['email']!.value.toString().trim(),
                      price: tour.price,
                      status: false,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      checkout: tour.deadline,
                      isHotelBooking: false,
                      isResortBooking: false,
                      hotel: null,
                      resort: null,
                      tour: tour,
                      isTourBooking: true,
                    );

                    requestCubit.sendRequest(request);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
