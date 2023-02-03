part of '../../login.dart';

class _SocialButtonWeb extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  const _SocialButtonWeb({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: AppDimensions.normalize(20),
        width: AppDimensions.normalize(60),
        padding: Space.all(),
        decoration: UIProps.boxCard,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
