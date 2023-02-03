import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hop_maldives/configs/configs.dart';
import 'package:hop_maldives/cubits/review/cubit.dart';
import 'package:hop_maldives/models/diving.dart';
import 'package:hop_maldives/models/excursion.dart';
import 'package:hop_maldives/models/hotel.dart';
import 'package:hop_maldives/models/island.dart';
import 'package:hop_maldives/models/resort.dart';
import 'package:hop_maldives/models/review.dart';
import 'package:hop_maldives/models/tour.dart';
import 'package:hop_maldives/widgets/buttons/app_button.dart';
import 'package:hop_maldives/widgets/custom_snackbar.dart';
import 'package:hop_maldives/widgets/multiline_text_field.dart';

class RatingsPopup extends StatefulWidget {
  final dynamic property;
  const RatingsPopup({
    Key? key,
    required this.property,
  }) : super(key: key);

  @override
  State<RatingsPopup> createState() => _RatingsPopupState();
}

class _RatingsPopupState extends State<RatingsPopup> {
  final _formKey = GlobalKey<FormBuilderState>();
  double ratings = 0.0;

  @override
  Widget build(BuildContext context) {
    final reviewCubit = ReviewCubit();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: Space.all(0.75),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rate your Experience',
                  style: AppText.b1b,
                ),
                IconButton(
                  splashRadius: AppDimensions.normalize(8),
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                  ),
                )
              ],
            ),
            Text(
              'Give your valuable feedback and we are for sure going to consider it!',
              style: AppText.l2,
            ),
            Space.y1!,
            Center(
              child: RatingBar.builder(
                itemPadding: Space.hf(0.25),
                allowHalfRating: false,
                initialRating: 0,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: AppTheme.c!.primary,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    ratings = rating;
                  });
                },
              ),
            ),
            Space.y1!,
            Text(
              'Anything extra you want to add. Please feel free',
              style: AppText.l2b,
            ),
            Space.y!,
            FormBuilder(
              key: _formKey,
              child: const CustomMultiLineTextField(
                name: 'review',
                hint: 'Describe your experience (opt)',
                textInputAction: TextInputAction.newline,
              ),
            ),
            Space.y!,
            AppButton(
              child: Text(
                'Submit',
                style: AppText.l1b!.copyWith(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.pop(context);

                CustomSnackBars.success(context,
                    'Thank you for you valuable Review. It has been sent successfully!');

                final review = Review(
                  ratings: ratings,
                  review: _formKey.currentState!.fields['review']!.value
                      .toString()
                      .trim(),
                );

                reviewCubit.send(
                  widget.property.id,
                  review,
                  isHotel: widget.property is Hotel,
                  isIsland: widget.property is Island,
                  isResort: widget.property is Resort,
                  isDiving: widget.property is Diving,
                  isExcursion: widget.property is Excursion,
                  isTour: widget.property is Tour,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
