part of '../../discover.dart';

class _ExpandedDiscoverCard extends StatefulWidget {
  final Discover e;
  const _ExpandedDiscoverCard({
    Key? key,
    required this.e,
  }) : super(key: key);

  @override
  State<_ExpandedDiscoverCard> createState() => _ExpandedDiscoverCardState();
}

class _ExpandedDiscoverCardState extends State<_ExpandedDiscoverCard> {
  final controller = ScreenshotController();
  late Uint8List screenShot;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
      child: Container(
        width: AppDimensions.normalize(120),
        decoration: UIProps.boxCard,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Screenshot(
                  controller: controller,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(UIProps.radius),
                      topRight: Radius.circular(UIProps.radius),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: widget.e.url,
                      placeholder: (context, s) => Center(
                        child: Text(
                          '...',
                          style: AppText.b2b!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: FloatingActionButton(
                    backgroundColor: AppTheme.c!.primary,
                    heroTag: 'back',
                    onPressed: () => Navigator.pop(context),
                    mini: true,
                    elevation: 0.0,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: Space.all(0.75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Description',
                    style: AppText.b1b,
                  ),
                  Space.y!,
                  Text(
                    widget.e.description,
                    style: AppText.b2,
                    textAlign: TextAlign.justify,
                  ),
                  Space.y!,
                ],
              ),
            ),
            Padding(
              padding: Space.all(),
              child: AppButton(
                onPressed: () async {
                  await controller
                      .capture(delay: const Duration(milliseconds: 10))
                      .then((Uint8List? image) async {
                    if (image != null) {
                      final directory =
                          await getApplicationDocumentsDirectory();
                      final imagePath =
                          await File('${directory.path}/image.png').create();
                      await imagePath.writeAsBytes(image);

                      await Share.shareFiles(
                        [imagePath.path],
                        text: widget.e.description,
                      );
                    }
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    Space.x!,
                    Text(
                      'Share',
                      style: AppText.b2!.cl(
                        Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
