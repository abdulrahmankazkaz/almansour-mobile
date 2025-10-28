// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
//
//
// import '../../core/utils/resources/values_manager.dart';
// import '../../generated/locale_keys.g.dart';
// import '../custom_buttons/custom_elevated_button.dart';
// import 'input_loader.dart';
//
//
// // class BasicInåputsSection extends StatefulWidget {
//   final Widget child;
//   final String label;
//   final bool isFoldable;
//   final bool isLoading;
//   final Function()? onEditTap;
//   final bool Function()? onSaveTap;
//   final Function()? onCancelTap;
//   final bool isEditable;
//   final Color? childColor;
//   final BoxBorder? border;
//   final bool showEdit;
//   final bool showActions;
//
//   const BasicInputsSection(
//       {super.key,
//       required this.child,
//       required this.label,
//       this.isEditable = false,
//       this.isFoldable = false,
//       this.onEditTap,
//       this.onSaveTap,
//       this.onCancelTap,
//       this.showEdit = true,
//       this.isLoading = false,
//       this.childColor,
//       this.border,
//       this.showActions = true});
//
//   @override
//   State<BasicInputsSection> createState() => _BasicInputsSectionState();
// }
//
// class _BasicInputsSectionState extends State<BasicInputsSection> {
//   double? height;
//   bool isExpanded = true;
//   late bool showEdit = widget.showEdit;
//   late final widgetHeight;
//   final GlobalKey key = GlobalKey();
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback(getWidgetHeight);
//   }
//
//   double? getWidgetHeight(Duration duration) {
//     try {
//       final RenderBox renderBox =
//           key.currentContext!.findRenderObject() as RenderBox;
//       widgetHeight = renderBox.size.height;
//       return widgetHeight;
//     } catch (e) {}
//     return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           color: Theme.of(context).colorScheme.onPrimaryContainer,
//           padding: EdgeInsets.symmetric(
//               horizontal: AppSizeW.s7, vertical: AppSizeH.s10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 widget.label,
//                 style: Theme.of(context).primaryTextTheme.labelMedium,
//               ),
//               if (widget.isFoldable)
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: AppSizeW.s15,
//                     ),
//                     if (widget.isEditable && showEdit && !widget.isLoading)
//                       CustomElevatedButton(
//                           padding: const EdgeInsets.all(1),
//                           backgroundColor:
//                               Theme.of(context).colorScheme.secondaryContainer,
//                           borderColor:
//                               Theme.of(context).colorScheme.secondaryContainer,
//                           minimumSize: const Size(35, 35),
//                           onPressed: () {
//                             showEdit = false;
//                             setState(() {});
//                             widget.onEditTap?.call();
//                           },
//                           child: Icon(
//                             Icons.edit,
//                             color: Theme.of(context)
//                                 .colorScheme
//                                 .onPrimaryContainer,
//                             size: 16,
//                           )),
//                     SizedBox(
//                       width: AppSizeW.s15,
//                     ),
//                     IconButton(
//                         padding: EdgeInsets.zero,
//                         style: IconButton.styleFrom(
//                           minimumSize: const Size(20, 20),
//                         ),
//                         onPressed: () {
//                           toggleExpanded();
//                         },
//                         icon: Icon(
//                           isExpanded
//                               ? Icons.arrow_drop_up
//                               : Icons.arrow_drop_down,
//                         )),
//                     SizedBox(
//                       width: AppSizeW.s15,
//                     ),
//                   ],
//                 ),
//             ],
//           ),
//         ),
//         if (!widget.isLoading)
//           AnimatedContainer(
//             height: height,
//             key: key,
//             clipBehavior: Clip.hardEdge,
//             duration: DurationConstant.d300,
//             color: Theme.of(context).colorScheme.primaryContainer,
//             padding: EdgeInsets.symmetric(
//                 horizontal: AppSizeW.s30, vertical: AppSizeH.s20),
//             child: Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: AppSizeW.s10, vertical: AppSizeH.s10),
//                   decoration: BoxDecoration(
//                       color: widget.childColor ??
//                           Theme.of(context).colorScheme.secondaryContainer,
//                       border: widget.border,
//                       borderRadius: BorderRadius.circular(AppSizeR.s10)),
//                   child: Center(
//                     child: widget.child,
//                   ),
//                 ).animate().fadeIn(),
//                 SizedBox(
//                   height: AppSizeH.s15,
//                 ),
//                 if (widget.showActions)
//                   Row(
//                     children: [
//                       if (widget.isEditable && !showEdit)
//                         CustomElevatedButton(
//                           backgroundColor: Theme.of(context).colorScheme.error,
//                           borderColor: Theme.of(context).colorScheme.error,
//                           onPressed: () {
//                             showEdit = true;
//                             setState(() {});
//                             widget.onCancelTap?.call();
//                           },
//                           child: Text(
//                             "Cancel",
//                             style:
//                                 Theme.of(context).primaryTextTheme.labelMedium,
//                           ),
//                         ),
//                       SizedBox(
//                         width: AppSizeW.s20,
//                       ),
//                       if (widget.isEditable && !showEdit)
//                         CustomElevatedButton(
//                             onPressed: () {
//                               bool? saved = widget.onSaveTap?.call();
//                               if (saved ?? false) {
//                                 showEdit = true;
//                                 setState(() {});
//                               }
//                             },
//                             child: Text(LocaleKeys.save.tr())),
//                     ],
//                   )
//               ],
//             ),
//           ),
//         if (widget.isLoading)
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: AppSizeH.s20),
//             child: InputLoader.small(),
//           )
//       ],
//     ).animate().fadeIn();
//   }
//
//   toggleExpanded() {
//     getWidgetHeight(Duration.zero);
//     if (isExpanded) {
//       height = 0;
//       isExpanded = !isExpanded;
//     } else {
//       //todo fix heigth
//       // height = widgetHeight;
//       height = null;
//       isExpanded = !isExpanded;
//     }
//     setState(() {});
//   }
// }
