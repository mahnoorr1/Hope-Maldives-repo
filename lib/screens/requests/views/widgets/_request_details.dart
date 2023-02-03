part of '../../requests.dart';

class _RequestDetails extends StatelessWidget {
  final int index;
  final Request request;
  const _RequestDetails({
    Key? key,
    required this.index,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final requestCubit = RequestCubit.c(context);
    dynamic property = request.hotel ??
        request.resort ??
        request.tour ??
        request.diving ??
        request.excursion;
    List<String> imgs = property.images;

    String message = '';
    if (request.diving != null) {
      message = request.diving!.message;
    } else if (request.excursion != null) {
      message = request.excursion!.message;
    }

    return Screen(
      overlayWidgets: [
        BlocConsumer<RequestCubit, RequestState>(
          listener: (context, state) {
            if (state.delete is RequestDeleteSuccess) {
              Navigator.pop(context, true);
              CustomSnackBars.success(
                context,
                'Your Request has been cancelled successfully',
              );
              requestCubit.state.fetch;
            } else if (state.delete is RequestDeleteFailed) {
              CustomSnackBars.failure(
                context,
                state.delete!.message!,
              );
            }
          },
          builder: (context, state) {
            if (state.delete is RequestDeleteLoading) {
              return const FullScreenLoader(
                loading: true,
              );
            }
            return const SizedBox();
          },
        )
      ],
      child: Scaffold(
        backgroundColor: AppTheme.c!.primary,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Space.y!,
              Row(
                children: [
                  BackButton(
                    color: Colors.white,
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'My Request - ${request.id}',
                    style: AppText.b2b!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Space.xm!,
                  PopupMenuButton(
                    icon: const Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Cancel Request'),
                        onTap: () {
                          requestCubit.delete(index);
                        },
                      ),
                    ],
                  )
                ],
              ),
              Space.y1!,
              Padding(
                padding: Responsive.isMobile(context)
                    ? Space.all(1, 0.5)
                    : Responsive.isTablet(context)
                        ? Space.all(5, 1)
                        : Space.all(15, 1),
                child: Container(
                  padding: Space.all(0.7, 1),
                  decoration: UIProps.boxCard,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Booking details',
                            style: AppText.l2b,
                          ),
                          Container(
                            padding: Space.all(1, 0.3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: request.status ? Colors.green : Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                request.status ? 'Accepted' : 'Pending',
                                style: AppText.l1!.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Space.y!,
                      Text(
                        'Place Name',
                        style: AppText.l2b!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        property.name,
                        style: AppText.b2b,
                      ),
                      Space.y!,
                      Text(
                        request.isTourBooking != null && request.isTourBooking!
                            ? 'Places'
                            : 'Address',
                        style: AppText.l2b!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        request.isTourBooking != null && request.isTourBooking!
                            ? property.place
                            : property.address,
                        style: AppText.l1b,
                      ),
                      Space.y!,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                request.isTourBooking != null
                                    ? 'Deadline'
                                    : 'Check in',
                                style: AppText.l2b!.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              Space.yf(0.15),
                              if (request.isTourBooking != null ||
                                  request.isDivingBooking != null ||
                                  request.isExcBooking != null)
                                Text(
                                  DateFormat('dd MMM, yyyy')
                                      .format(request.checkout!),
                                  style: AppText.l1b,
                                )
                              else
                                Text(
                                  DateFormat('dd MMM, yyyy')
                                      .format(request.checkin!),
                                  style: AppText.l1b,
                                )
                            ],
                          ),
                          if (request.isTourBooking != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Check out',
                                  style: AppText.l2b!.copyWith(
                                    color: Colors.grey,
                                  ),
                                ),
                                Space.yf(0.15),
                                Text(
                                  DateFormat('dd MMM, yyyy')
                                      .format(request.checkout!),
                                  style: AppText.l1b,
                                )
                              ],
                            )
                        ],
                      ),
                      Space.y1!,
                      if (property is Hotel || property is Resort)
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: AppDimensions.normalize(5),
                          runSpacing: AppDimensions.normalize(5),
                          children: imgs
                              .take(3)
                              .map(
                                (e) => SizedBox(
                                  height: AppDimensions.normalize(30),
                                  width: AppDimensions.normalize(35),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(UIProps.radius),
                                    child: CachedNetworkImage(
                                      imageUrl: e,
                                      fit: BoxFit.cover,
                                      placeholder: (context, str) => Center(
                                        child: Text(
                                          '...',
                                          style: AppText.b2b,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      else ...[
                        Text(
                          'Message',
                          style: AppText.l2b!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          message,
                          style: AppText.l2b!.cl(
                            AppTheme.c!.text!,
                          ),
                        )
                      ],
                      Divider(
                        height: AppDimensions.normalize(10),
                        thickness: AppDimensions.normalize(1),
                      ),
                      Text(
                        'Guest details',
                        style: AppText.l2b,
                      ),
                      Space.y1!,
                      Text(
                        'Full Name',
                        style: AppText.l2b!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '${request.title}. ${request.fullName}',
                        style: AppText.b2b,
                      ),
                      Space.y!,
                      Text(
                        'Email Address',
                        style: AppText.l2b!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        request.email,
                        style: AppText.l1b,
                      ),
                      Divider(
                        height: AppDimensions.normalize(10),
                        thickness: AppDimensions.normalize(1),
                      ),
                      Text(
                        'Payment Details',
                        style: AppText.l2b,
                      ),
                      Space.y!,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: AppText.b1b,
                          ),
                          Text(
                            App.format(request.price),
                            style: AppText.b1b!.copyWith(
                              color: AppTheme.c!.primary,
                            ),
                          )
                        ],
                      ),
                      Space.y2!,
                      Text(
                        'Dated:',
                        style: AppText.l2b!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        DateFormat('dd MMM, yyyy').format(
                          DateTime.fromMillisecondsSinceEpoch(
                            request.createdAt,
                          ),
                        ),
                        style: AppText.l1b,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
