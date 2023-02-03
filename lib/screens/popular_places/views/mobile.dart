part of '../popular_places.dart';

class Mobile extends StatelessWidget {
  final List<dynamic> places;
  const Mobile({
    Key? key,
    required this.places,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    places.sort((a, b) => a.name.compareTo(b.name));
    return SingleChildScrollView(
      padding: Space.all(.75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              BackButton(
                onPressed: () => Navigator.pop(context),
              ),
              Text(
                'Popular Places',
                style: AppText.h1b,
              )
            ],
          ),
          Space.y1!,
          ...places.map(
            (e) => WidgetAnimator(
              child: PropertyCard(e: e),
            ),
          )
        ],
      ),
    );
  }
}
