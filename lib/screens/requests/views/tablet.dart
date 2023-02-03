part of '../requests.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    final requestCubit = RequestCubit.c(context);
    List<Request>? reqs = requestCubit.state.fetch!.data;
    reqs!.sort((r1, r2) => r2.createdAt.compareTo(r1.createdAt));
    return Padding(
      padding: Space.all(),
      child: ListView(
        padding: Responsive.isTablet(context)
            ? Space.hf(5)
            : MediaQuery.of(context).size.width >= 1500
                ? Space.hf(15)
                : Space.hf(8),
        children: [
          if (reqs.isEmpty)
            Center(
              child: Text(
                'No requests for booking yet',
                style: AppText.b2b,
              ),
            )
          else
            ...reqs
                .asMap()
                .entries
                .map(
                  (e) => InkWell(
                    onTap: () async {
                      final isDeleted = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return _RequestDetails(
                              index: e.key,
                              request: e.value,
                            );
                          },
                        ),
                      );
                      if (isDeleted ?? false) {
                        setState(() {});
                      }
                    },
                    child: _MobileRequestCard(
                      e: e.value,
                    ),
                  ),
                )
                .toList()
        ],
      ),
    );
  }
}
