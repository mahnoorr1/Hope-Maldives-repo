part of '../diving_exc_booking.dart';

class Mobile extends StatefulWidget {
  final dynamic property;
  const Mobile({Key? key, required this.property}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  final _key = GlobalKey<FormBuilderState>();

  int _adults = 2;
  int _dives = 5;

  @override
  Widget build(BuildContext context) {
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
                ),
              ],
            ),
            Divider(
              height: AppDimensions.normalize(17),
              thickness: AppDimensions.normalize(0.8),
            ),
            Row(
              children: [
                Text(
                  'Number of Adults',
                  style: AppText.l1b,
                ),
                const Spacer(),
                Expanded(
                  child: NumberPicker(
                    itemWidth: AppDimensions.normalize(25),
                    axis: Axis.horizontal,
                    value: _adults,
                    onChanged: (value) {
                      setState(() {
                        _adults = value;
                      });
                    },
                    maxValue: 50,
                    minValue: 1,
                    selectedTextStyle: AppText.h3b!.copyWith(
                      color: AppTheme.c!.primary,
                    ),
                  ),
                ),
                Space.x1!,
              ],
            ),
            if (widget.property is Diving) ...[
              Space.y!,
              Row(
                children: [
                  Text(
                    'Number of Dives/\nPer Person',
                    style: AppText.l1b,
                  ),
                  const Spacer(),
                  Expanded(
                    child: NumberPicker(
                      itemWidth: AppDimensions.normalize(25),
                      axis: Axis.horizontal,
                      value: _dives,
                      onChanged: (value) {
                        setState(() {
                          _dives = value;
                        });
                      },
                      maxValue: 50,
                      minValue: 1,
                      selectedTextStyle: AppText.h3b!.copyWith(
                        color: AppTheme.c!.primary,
                      ),
                    ),
                  ),
                  Space.x1!,
                ],
              ),
              Divider(
                height: AppDimensions.normalize(17),
                thickness: AppDimensions.normalize(0.8),
              ),
              Container(
                padding: Space.all(),
                decoration: BoxDecoration(
                  color: AppTheme.c!.primary!.withAlpha(200),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Number of Dives',
                      style: AppText.l1b!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      (_adults * _dives).toString(),
                      style: AppText.l1b!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            Space.y1!,
            AppButton(
              borderColor: AppTheme.c!.primary,
              color: Colors.transparent,
              child: Text(
                widget.property is Diving
                    ? 'Select type of Dives'
                    : 'Select type of Excursions',
                style: AppText.b2!.copyWith(
                  color: AppTheme.c!.primary,
                ),
              ),
              onPressed: () => showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                builder: (_) => TypesModal(
                  diving: widget.property is Diving ? widget.property : null,
                  excursion:
                      widget.property is Excursion ? widget.property : null,
                ),
              ),
            ),
            Space.y!,
            FormBuilder(
              key: _key,
              child: const CustomMultiLineTextField(
                name: 'message',
                hint:
                    'Can’t think of what to ask?\nTell us what dates you would like for us to look into.\nAsk us if you have any restrictions or make special accommodations.\nInquire about group sizes and equipment provided or required!',
              ),
            ),
            Space.y1!,
            AppButton(
              child: Text(
                'Get quote',
                style: AppText.b1!.copyWith(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (widget.property is Diving) {
                  widget.property.message = _key
                      .currentState!.fields['message']!.value
                      .toString()
                      .trim();
                  Request request = Request(
                    id: App.id(),
                    userId: authData.state.data!.id,
                    title: '',
                    fullName: authData.state.data!.fullName,
                    email: authData.state.data!.email,
                    price: 0,
                    status: false,
                    createdAt: DateTime.now().millisecondsSinceEpoch,
                    isDivingBooking: true,
                    diving: widget.property,
                    checkout: DateTime.now(),
                  );

                  requestCubit.sendRequest(request);
                } else {
                  widget.property.message = _key
                      .currentState!.fields['message']!.value
                      .toString()
                      .trim();
                  Request request = Request(
                    id: App.id(),
                    userId: authData.state.data!.id,
                    title: '',
                    fullName: authData.state.data!.fullName,
                    email: authData.state.data!.email,
                    price: 0,
                    status: false,
                    createdAt: DateTime.now().millisecondsSinceEpoch,
                    isExcBooking: true,
                    excursion: widget.property,
                    checkout: DateTime.now(),
                  );

                  requestCubit.sendRequest(request);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
