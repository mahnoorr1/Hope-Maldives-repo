part of '../requests.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final requestCubit = RequestCubit.c(context);
    List<Request>? reqs = requestCubit.state.fetch!.data;
    reqs!.sort((r1, r2) => r2.createdAt.compareTo(r1.createdAt));

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Space.all(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'Requests',
                    style: AppText.h1b,
                  ),
                ],
              ),
              Space.y!,
              Padding(
                padding: Space.h!,
                child: Text(
                  'Following are your requests for bookings',
                  style: AppText.l1,
                ),
              ),
              Space.y1!,
              Expanded(
                child: (reqs.isEmpty)
                    ? Center(
                        child: Text(
                          'No requests for booking yet',
                          style: AppText.b2b,
                        ),
                      )
                    : ListView(
                        padding: Space.h,
                        children: reqs
                            .asMap()
                            .entries
                            .map(
                              (e) => InkWell(
                                onTap: () async {
                                  final isDeleted = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => _RequestDetails(
                                        index: e.key,
                                        request: e.value,
                                      ),
                                    ),
                                  );
                                  if (isDeleted ?? false) {
                                    setState(() {});
                                  }
                                },
                                child: _MobileRequestCard(e: e.value),
                              ),
                            )
                            .toList(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
