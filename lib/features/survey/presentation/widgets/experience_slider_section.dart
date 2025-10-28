import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/resources/values_manager.dart';
import '../../../../generated/locale_keys.g.dart';
import '../bloc/survey_bloc.dart';

class EmojiRatingBar extends StatefulWidget {
  const EmojiRatingBar({super.key});

  @override
  State<EmojiRatingBar> createState() => _EmojiRatingBarState();
}

class _EmojiRatingBarState extends State<EmojiRatingBar> {
  int selectedIndex = -1;

  final List<Map<String, dynamic>> ratings = [
    {
      "icon": Icons.sentiment_very_satisfied,
      "label": LocaleKeys.survey_excellent.tr(),
      "color": const Color(0xFF347736),
    },
    {
      "icon": Icons.sentiment_satisfied_alt,
      "label": LocaleKeys.survey_veryGood.tr(),
      "color": const Color(0xFF43A047),
    },
    {
      "icon": Icons.sentiment_neutral,
      "label": LocaleKeys.survey_good.tr(),
      "color": const Color(0xFFFBC02D),
    },
    {
      "icon": Icons.sentiment_dissatisfied,
      "label": LocaleKeys.survey_bad.tr(),
      "color": const Color(0xFFFB8C00),
    },
    {
      "icon": Icons.sentiment_very_dissatisfied,
      "label": LocaleKeys.survey_veryBad.tr(),
      "color": const Color(0xFFD32F2F),
    },
  ];

  void _saveRating(int index) {
    final value = index + 1;
      context.read<SurveyBloc>().experienceRate = value;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizeH.s20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(ratings.length, (index) {
            final rating = ratings[index];
            final isSelected = selectedIndex == index;
            final Color selectedColor = rating["color"];
            final Color defaultColor = Colors.black26;

            return SizedBox(
              width: MediaQuery.sizeOf(context).width*0.16,
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  _saveRating(index);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      rating["icon"],
                      color: isSelected ? selectedColor : defaultColor,
                      size: AppSizeW.s50,
                    ),
                    SizedBox(height: AppSizeH.s10),

                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}