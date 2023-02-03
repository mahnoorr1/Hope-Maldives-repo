part of '../../discover.dart';

class _DiscoverCard extends StatelessWidget {
  final Discover e;
  const _DiscoverCard({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (context) => Dialog(
          insetPadding:
              Responsive.isMobile(context) ? Space.hf(2.5) : Space.all(5),
          child: _ExpandedDiscoverCard(e: e),
        ),
      ),
      child: Container(
        width: AppDimensions.normalize(70),
        decoration: UIProps.boxCard,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(UIProps.radius),
                topRight: Radius.circular(UIProps.radius),
              ),
              child: CachedNetworkImage(
                imageUrl: e.url,
                placeholder: (context, s) => Center(
                  child: SizedBox(
                    height: AppDimensions.normalize(40),
                    child: const ImagePlaceholder(),
                  ),
                ),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: Space.all(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Description',
                    style: AppText.b2b,
                  ),
                  Space.y!,
                  Text(
                    e.description,
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
