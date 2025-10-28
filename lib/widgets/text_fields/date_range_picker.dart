import 'package:flutter/material.dart';

import '../../core/utils/helpers/helper.dart';
import '../../core/utils/resources/values_manager.dart';
import '../custom_containers/basic_container.dart';
import 'custom_text_field.dart';

class DateRangePickerWidget extends StatefulWidget {
  final Function(DateTime? value) onFromDateChange;
  final Function(DateTime? value) onToDateChange;
  final DateTime? fromDate;
  final DateTime? toDate;

  const DateRangePickerWidget(
      {super.key,
      required this.onFromDateChange,
      required this.onToDateChange,
      this.fromDate,
      this.toDate});

  @override
  DateRangePickerWidgetState createState() => DateRangePickerWidgetState();
}

class DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  late DateTime? fromDate = widget.fromDate;
  late DateTime? toDate = widget.toDate;
  late TextEditingController fromDateController = TextEditingController(
      text: widget.fromDate == null
          ? null
          : 'From: ${Helper.instance.dateHelper.formatDateJustDate(widget.fromDate)}');
  late TextEditingController toDateController = TextEditingController(
      text: widget.toDate == null
          ? null
          : 'To: ${Helper.instance.dateHelper.formatDateJustDate(widget.toDate)}');

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      helpText: 'Select ${isFromDate ? 'From' : 'To'} Date',
      // helpText: 'Select Date',
      initialDate:
          isFromDate ? fromDate ?? DateTime.now() : toDate ?? DateTime.now(),
      firstDate: isFromDate ? DateTime(2000) : fromDate ?? DateTime(2000),
      // fieldLabelText: isFromDate ? 'From Date' : 'To Date',
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        if (isFromDate) {
          fromDate = pickedDate;
          fromDateController.text =
              'From: ${Helper.instance.dateHelper.formatDateJustDate(fromDate)}';
          widget.onFromDateChange.call(fromDate);
          if (toDate != null && fromDate!.isAfter(toDate!)) {
            // If from date is after the to date, update to date.
            toDate = fromDate;
            widget.onToDateChange.call(toDate);
            toDateController.text =
                'To: ${Helper.instance.dateHelper.formatDateJustDate(toDate)}';
          }
        } else {
          toDate = pickedDate;
          widget.onToDateChange.call(toDate);
          toDateController.text =
              'To: ${Helper.instance.dateHelper.formatDateJustDate(toDate)}';
          if (fromDate != null && toDate!.isBefore(fromDate!)) {
            // If to date is before the from date, update from date.
            fromDate = toDate;
            fromDateController.text =
                'From: ${Helper.instance.dateHelper.formatDateJustDate(fromDate)}';
            widget.onFromDateChange.call(fromDate);
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeH.s50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: SizedBox(
              height: AppSizeH.s50,
              child: CustomTextField(
                onTap: () {
                  _selectDate(context, true);
                },
                readOnly: true,
                suffixIconConstraints: BoxConstraints(
                    maxHeight: AppSizeH.s50, maxWidth: double.maxFinite),
                textEditingController: fromDateController,
                style: Theme.of(context)
                    .inputDecorationTheme
                    .labelStyle
                    ?.copyWith(fontSize: AppSizeSp.s16),
                value: fromDate == null
                    ? null
                    : 'From: ${Helper.instance.dateHelper.formatDateJustDate(fromDate)}',
                contentPadding: EdgeInsetsDirectional.only(start: AppSizeW.s2),
                hint: 'From Date',
                textAlign: TextAlign.center,
                suffixIcon: fromDate == null
                    ? null
                    : Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s5),
                        child: InkWell(
                            onTap: () {
                              fromDate = null;
                              fromDateController.clear();
                              widget.onFromDateChange.call(fromDate);
                              setState(() {});
                            },
                            child: BasicContainer(
                              color: Theme.of(context)
                                  .colorScheme
                                  .error
                                  .withOpacity(0.1),
                              padding: EdgeInsets.all(AppSizeH.s5),
                              child: Icon(
                                Icons.clear_rounded,
                                color: Theme.of(context).colorScheme.error,
                                size: AppSizeSp.s25,
                              ),
                            )),
                      ),
              ),
            ),
          ),
          SizedBox(width: AppSizeW.s10),
          Flexible(
            child: SizedBox(
              height: AppSizeH.s50,
              child: CustomTextField(
                textEditingController: toDateController,
                suffixIconConstraints: BoxConstraints(
                    maxHeight: AppSizeH.s50, maxWidth: double.maxFinite),
                readOnly: true,
                onTap: () {
                  _selectDate(context, false);
                },
                contentPadding: EdgeInsets.zero,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .inputDecorationTheme
                    .labelStyle
                    ?.copyWith(fontSize: AppSizeSp.s16),
                suffixIcon: toDate == null
                    ? null
                    : Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s5),
                        child: InkWell(
                            onTap: () {
                              toDate = null;
                              toDateController.clear();
                              widget.onToDateChange.call(toDate);
                              setState(() {});
                            },
                            child: BasicContainer(
                              color: Theme.of(context)
                                  .colorScheme
                                  .error
                                  .withOpacity(0.1),
                              padding: EdgeInsets.all(AppSizeH.s5),
                              child: Icon(
                                Icons.clear_rounded,
                                color: Theme.of(context).colorScheme.error,
                                size: AppSizeSp.s25,
                              ),
                            )),
                      ),
                value: toDate == null
                    ? null
                    : 'To: ${Helper.instance.dateHelper.formatDateJustDate(toDate)}',
                hint: 'To Date',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
