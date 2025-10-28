import 'package:flutter/material.dart';

import '../../core/utils/resources/values_manager.dart';
import 'basic_container.dart';

class TitleContainerWidget extends StatelessWidget {
  final String label;

  final String value;

  final double width;

  const TitleContainerWidget(
      {super.key,
      required this.label,
      required this.value,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        color: Theme.of(context).colorScheme.secondaryContainer,
        padding: EdgeInsets.symmetric(
            horizontal: AppSizeW.s10, vertical: AppSizeH.s8),
        width: width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontSize: AppSizeSp.s15),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    value,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: AppSizeSp.s15),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
