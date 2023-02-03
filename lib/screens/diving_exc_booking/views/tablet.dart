part of '../diving_exc_booking.dart';

class Tablet extends StatefulWidget {
  final dynamic property;
  const Tablet({
    Key? key,
    required this.property,
  }) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  final _key = GlobalKey<FormBuilderState>();

  int _adults = 2;
  int _dives = 5;

  @override
  Widget build(BuildContext context) {
    final authData = AuthCubit.cubit(context);
    final requestCubit = RequestCubit.c(context);

    List<String> images = widget.property.images;

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
        padding: Responsive.isDesktop(context) &&
                MediaQuery.of(context).size.width >= 1600
            ? Space.all(15, 1)
            : MediaQuery.of(context).size.width >= 1200
                ? Space.all(8, 1)
                : Space.all(),
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
            Space.y1!,
            Container(
              padding: Space.all(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: FormBuilder(
                      key: _key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            widget.property.name,
                            style: AppText.h2b,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.pin_drop,
                                color: AppTheme.c!.primary,
                              ),
                              Space.x!,
                              Text(
                                widget.property.address,
                                style: AppText.l2,
                              )
                            ],
                          ),
                          Space.y1!,
                          Text(
                            'Please fill the following information',
                            style: AppText.b2b,
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
                              const Spacer(
                                flex: 2,
                              ),
                              Expanded(
                                child: FormBuilderDropdown<int>(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      _adults = value!;
                                    });
                                  },
                                  initialValue: 2,
                                  elevation: 2,
                                  name: 'adults',
                                  items: [for (int i = 1; i <= 10; i++) i]
                                      .map(
                                        (e) => DropdownMenuItem(
                                          value: e,
                                          child: Text(e.toString()),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              Space.x1!,
                            ],
                          ),
                          Space.y!,
                          if (widget.property is Diving) ...[
                            Space.y!,
                            Row(
                              children: [
                                Text(
                                  'Number of Dives/\nPer Person',
                                  style: AppText.l1b,
                                ),
                                const Spacer(
                                  flex: 2,
                                ),
                                Expanded(
                                  child: FormBuilderDropdown<int>(
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _dives = value!;
                                      });
                                    },
                                    initialValue: 5,
                                    elevation: 2,
                                    name: 'dives',
                                    items: [for (int i = 1; i <= 50; i++) i]
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e.toString()),
                                          ),
                                        )
                                        .toList(),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Number of Dives',
                                    style: AppText.l1b!.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    (_dives * _adults).toString(),
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
                                diving: widget.property is Diving
                                    ? widget.property
                                    : null,
                                excursion: widget.property is Excursion
                                    ? widget.property
                                    : null,
                              ),
                            ),
                          ),
                          Space.y!,
                          const CustomMultiLineTextField(
                            name: 'message',
                            hint: 'Enter some message',
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
                                  createdAt:
                                      DateTime.now().millisecondsSinceEpoch,
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
                                  createdAt:
                                      DateTime.now().millisecondsSinceEpoch,
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
                  ),
                  Space.xf(3),
                  Expanded(
                    child: Container(
                      decoration: UIProps.boxCard,
                      padding: Space.all(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.property is Excursion
                                ? 'Available Activities'
                                : 'What can be seen',
                            style: AppText.h3b,
                          ),
                          Space.y!,
                          ActivitiesChips(
                            act: widget.property.activities,
                          ),
                          Divider(
                            height: AppDimensions.normalize(10),
                          ),
                          Text(
                            'Photos',
                            style: AppText.h3b,
                          ),
                          Space.y!,
                          SizedBox(
                            height: AppDimensions.normalize(60),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: images
                                    .map(
                                      (e) => Padding(
                                        padding: Space.h!,
                                        child: CachedNetworkImage(
                                          imageUrl: e,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                          Divider(
                            height: AppDimensions.normalize(10),
                          ),
                          Text(
                            'Map',
                            style: AppText.h3b,
                          ),
                          Space.y!,
                          SizedBox(
                            height: AppDimensions.normalize(90),
                            child: GoogleMap(
                              myLocationButtonEnabled: false,
                              myLocationEnabled: false,
                              mapType: MapType.normal,
                              onTap: (_) => LauncherUtil.openMap(
                                widget.property.lat,
                                widget.property.lng,
                              ),
                              initialCameraPosition: CameraPosition(
                                target: LatLng(
                                  widget.property.lat,
                                  widget.property.lng,
                                ),
                                zoom: 12,
                              ),
                              markers: {
                                Marker(
                                  markerId: const MarkerId("ID"),
                                  position: LatLng(
                                    widget.property.lat,
                                    widget.property.lng,
                                  ),
                                ),
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
