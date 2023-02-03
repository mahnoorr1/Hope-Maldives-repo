import 'package:flutter/material.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/models/diving.dart';
import 'package:hop_maldives/models/excursion.dart';
import 'package:hop_maldives/providers/app_provider.dart';
import 'package:hop_maldives/responsive/responsive.dart';
import 'package:provider/provider.dart';

class TypesModal extends StatelessWidget {
  final Diving? diving;
  final Excursion? excursion;
  const TypesModal({
    Key? key,
    this.diving,
    this.excursion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    bool isDiving = diving != null;

    List<String> types = diving == null ? excursion!.types : diving!.types;
    return Padding(
      padding: Space.all(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Space.y!,
          Container(
            width: AppDimensions.normalize(20),
            height: AppDimensions.normalize(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select type(s)',
                style: AppText.b1b,
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          Space.y!,
          Wrap(
            spacing: AppDimensions.normalize(2),
            runSpacing:
                !Responsive.isMobile(context) ? AppDimensions.normalize(3) : 0,
            children: types
                .map(
                  (e) => Chip(
                    deleteIcon: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.check),
                    ),
                    onDeleted: () {
                      if (isDiving) {
                        if (appProvider.divingTypes.contains(e)) {
                          appProvider.removeDiveType = e;
                        } else {
                          appProvider.addDiveType = e;
                        }
                      } else {
                        if (appProvider.excTypes.contains(e)) {
                          appProvider.removeExcType = e;
                        } else {
                          appProvider.addExcType = e;
                        }
                      }
                    },
                    label: Text(
                      e,
                      style: AppText.l1!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: isDiving
                        ? appProvider.divingTypes.contains(e)
                            ? AppTheme.c!.primary
                            : Colors.grey
                        : appProvider.excTypes.contains(e)
                            ? AppTheme.c!.primary
                            : Colors.grey,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
