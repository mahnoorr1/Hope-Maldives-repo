part of '../booking.dart';

class Mobile extends StatefulWidget {
  final dynamic property;
  const Mobile({
    Key? key,
    required this.property,
  }) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  DateTimeRange? dates;
  int days = 1;

  @override
  Widget build(BuildContext context) {
    final state = AppProvider.state(context);
    final authData = AuthCubit.cubit(context);
    final requestCubit = RequestCubit.c(context);

    double price = widget.property is Hotel
        ? widget.property.perNightPrice * days
        : widget.property.price * days;

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
                    'Booking',
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
                      imageUrl: widget.property.images.first,
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
                          widget.property.name,
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
                                widget.property.address,
                                style: AppText.b2!.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Space.y1!,
              FormBuilderDateRangePicker(
                name: 'dates',
                firstDate: DateTime(DateTime.now().year),
                lastDate: DateTime(2030),
                validator: FormBuilderValidators.required(
                  errorText: 'Please select your dates',
                ),
                format: DateFormat('dd MMM, EEE'),
                onChanged: (value) => setState(() {
                  dates = value!;
                  days = value.end.difference(value.start).inDays;
                }),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.date_range),
                  suffixIcon: IconButton(
                    splashRadius: AppDimensions.normalize(7),
                    onPressed: () {
                      state.bookingFormState.currentState!.fields['dates']!
                          .reset();
                      setState(() {
                        days = 1;
                      });
                    },
                    icon: const Icon(FontAwesomeIcons.xmark),
                  ),
                  filled: true,
                  contentPadding: Space.all(0.75, 0.9),
                  hintText: 'Select dates',
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
              Space.y1!,
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
              CustomTextField(
                name: 'name',
                hint: 'Full name',
                textInputType: TextInputType.name,
                validatorFtn: FormBuilderValidators.required(),
              ),
              Space.y!,
              CustomTextField(
                name: 'email',
                hint: 'Email address',
                textInputType: TextInputType.emailAddress,
                validatorFtn: FormBuilderValidators.required(),
              ),
              Divider(
                height: AppDimensions.normalize(20),
              ),
              Text(
                'Will be calculated as per number of days:',
                style: AppText.l2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub total',
                    style: AppText.b1b,
                  ),
                  Text(
                    App.format(price),
                    style: AppText.b1,
                  ),
                ],
              ),
              const Divider(),
              Text(
                'Including the inclusive charges and total price.',
                style: AppText.l2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total price',
                    style: AppText.h3b!.cl(AppTheme.c!.primary!),
                  ),
                  Text(
                    App.format(price + widget.property.inclusiveCharges),
                    style: AppText.h3,
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
                      price: price + widget.property.inclusiveCharges,
                      status: false,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      checkin: dates!.start,
                      checkout: dates!.end,
                      isHotelBooking: widget.property is Hotel,
                      isResortBooking: widget.property is Resort,
                      hotel: widget.property is Hotel ? widget.property : null,
                      resort:
                          widget.property is Resort ? widget.property : null,
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
