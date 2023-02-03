part of '../../booking_details.dart';

class _PropertyDetails extends StatelessWidget {
  final dynamic property;
  final double price;
  const _PropertyDetails({
    Key? key,
    required this.property,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UIProps.boxCard,
      height: AppDimensions.normalize(80),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: CachedNetworkImage(
                imageUrl: property.images.first,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: Space.all(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    property.name,
                    style: AppText.h2b,
                  ),
                  Space.y!,
                  Row(
                    children: [
                      const Icon(
                        Icons.pin_drop,
                      ),
                      Text(
                        property.address,
                        style: AppText.l1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      )
                    ],
                  ),
                  Space.y!,
                  Text(
                    property.description,
                    maxLines: 2,
                    style: AppText.l1!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Space.yf(0.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CodeButton(code: property.id,),
                    ],
                  ),
                  if (property is! Island) ...[
                    Space.ym!,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (property is! Diving && property is! Excursion)
                          Text(
                            '${App.format(price)}/Night',
                            style: AppText.b1,
                          ),
                        SizedBox(
                          height: AppDimensions.normalize(12),
                          width: AppDimensions.normalize(40),
                          child: AppButton(
                            child: Text(
                              'Book Now',
                              style: AppText.l2!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              if (property is Hotel || property is Resort) {
                                Navigator.pushNamed(context, AppRoutes.booking,
                                    arguments: {
                                      'property': property,
                                    });
                              } else {
                                Navigator.pushNamed(
                                    context, AppRoutes.divingExcBooking,
                                    arguments: {
                                      'property': property,
                                    });
                              }
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
