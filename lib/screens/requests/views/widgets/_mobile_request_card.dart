part of '../../requests.dart';

class _MobileRequestCard extends StatelessWidget {
  final Request e;
  const _MobileRequestCard({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    dynamic property = e.hotel ?? e.resort ?? e.tour ?? e.diving ?? e.excursion;

    return Container(
      margin: Space.v,
      padding: Space.all(0.7),
      decoration: UIProps.boxCard,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Request ID',
                    style: AppText.l2b!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Space.yf(0.15),
                  Text(
                    e.id,
                    style: AppText.l2b,
                  )
                ],
              ),
              Container(
                padding: Space.all(1, 0.3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: e.status ? Colors.green : Colors.red,
                ),
                child: Center(
                  child: Text(
                    e.status ? 'Accepted' : 'Pending',
                    style: AppText.l1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Divider(
            height: AppDimensions.normalize(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User ID',
                    style: AppText.l2b!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Space.yf(0.15),
                  Text(
                    '${e.userId.substring(0, 10)}...',
                    style: AppText.l2b,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${e.title}. ${e.fullName}',
                    style: AppText.l1b,
                  ),
                  Space.yf(0.15),
                  Text(
                    e.email,
                    style: AppText.l2,
                  )
                ],
              )
            ],
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking at',
                    style: AppText.l2b!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Space.yf(0.15),
                  Text(
                    property.name,
                    style: AppText.l1b,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    e.isTourBooking != null && e.isTourBooking!
                        ? 'Deadline'
                        : 'check in - check out',
                    style: AppText.l2b!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Space.yf(0.15),
                  Text(
                    e.isTourBooking != null && e.isTourBooking!
                        ? DateFormat('dd MMM, yyyy').format(e.checkout!)
                        : (e.isDivingBooking != null && e.isDivingBooking!) ||
                                (e.isExcBooking != null && e.isExcBooking!)
                            ? DateFormat('dd MMM, yyyy').format(e.checkout!)
                            : '${DateFormat('dd MMM -').format(e.checkin!)} ${DateFormat('dd MMM, yyyy').format(e.checkout!)}',
                    style: AppText.l1b,
                  )
                ],
              ),
            ],
          ),
          if (property is Hotel || property is Resort) ...[
            Divider(
              height: AppDimensions.normalize(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price',
                  style: AppText.b2b,
                ),
                Text(
                  App.format(e.price),
                  style: AppText.b2b!.copyWith(
                    color: AppTheme.c!.primary,
                  ),
                )
              ],
            )
          ],
        ],
      ),
    );
  }
}
