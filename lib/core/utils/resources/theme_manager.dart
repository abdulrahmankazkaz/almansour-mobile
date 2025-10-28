import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../extensions/extensions.dart';
import 'color_manager.dart';

class FontConstants {
  static const String almaraiFontFamily = "almarai";
  static const String ibmPlexSansFontFamily = "IBMPlexSans";
}

enum ThemeDataType { light, dark }

ThemeData buildLightTheme(String languageCode){
  return ThemeData(
      fontFamily:
      languageCode ==
          'ar'
          ? FontConstants.almaraiFontFamily
          : FontConstants.ibmPlexSansFontFamily,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: ColorManager.primaryColorDark),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
            color: ColorManager.primaryColorDark,
          )),
      focusColor: ColorManager.primaryColor,
      iconTheme: const IconThemeData(color: ColorManager.secondaryGrey),
      dividerColor: ColorManager.black,
      brightness: Brightness.light,
      primaryColor: ColorManager.primaryColor,
      disabledColor: ColorManager.darkGrey,
      primarySwatch: ColorManager.primarySwatch,
      cardColor: ColorManager.surface,
      canvasColor: ColorManager.greyLight.withOpacity(0.2),
      scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 60.sp,
            fontWeight: FontWeight.w700,
            color: ColorManager.primaryColorDark),
        // TextStyle(
        //
        //   fontSize: 60.sp,
        //   fontWeight: FontWeight.w700,
        //   color: ColorManager.primaryColorDark,
        // ),
        displayMedium: TextStyle(
          fontSize: 50.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.primaryColorDark,
        ),
        displaySmall: TextStyle(
          fontSize: 40.sp,
          fontWeight: FontWeight.w500,
          color: ColorManager.primaryColorDark,
        ),
        headlineLarge: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.primaryColorDark,
        ),
        headlineMedium: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.primaryColorDark,
        ),
        headlineSmall: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.primaryColorDark,
        ),
        bodyLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.primaryColorDark,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryColorDark,
        ),
        bodySmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryColorDark,
        ),
        labelLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryColorDark,
        ),
        labelMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryColorDark,
        ),
        labelSmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.primaryColorDark,
        ),
      ),
      primaryTextTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.black,
        ),
        headlineSmall: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
        bodySmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
        labelLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
        labelMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
        labelSmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: ColorManager.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      dataTableTheme: DataTableThemeData(
        headingRowColor: WidgetStateColor.resolveWith(
              (states) => ColorManager.primaryColorSoft,
        ),
        dataRowColor: WidgetStateColor.resolveWith(
              (states) {
            if (states.contains(WidgetState.selected)) {
              return ColorManager.primarySwatch.shade50;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade50;
            }

            return ColorManager.surface;
          },
        ),
        headingTextStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
        dataTextStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.black,
        ),
        dividerThickness: 1,
      ),
      colorScheme: const ColorScheme.light(
        primary: ColorManager.primaryColor,
        onPrimary: ColorManager.surface,
        secondary: ColorManager.primaryColorLight,
        primaryContainer: ColorManager.primaryContainer,
        onPrimaryContainer: ColorManager.surface,
        shadow: ColorManager.shadow,
        surface: ColorManager.surface,
        error: ColorManager.error,
        surfaceTint: Colors.transparent,
        brightness: Brightness.light,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w200,
          color: ColorManager.darkGrey,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        errorStyle: TextStyle(
          color: ColorManager.error,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: ColorManager.surface,
        hoverColor: ColorManager.grey,
        focusColor: ColorManager.grey,
        labelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.greyLight,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.error,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          side: WidgetStateProperty.resolveWith<BorderSide>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return const BorderSide(
                  color: ColorManager.softGrey,
                  width: 1,
                  style: BorderStyle.solid,
                );
              }
              return const BorderSide(
                color: ColorManager.primaryColor,
                width: 1,
                style: BorderStyle.solid,
              );
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return Colors.transparent;
              } else if (states.contains(WidgetState.hovered)) {
                return ColorManager.primarySwatch.shade100;
              } else if (states.contains(WidgetState.pressed)) {
                return ColorManager.primarySwatch.shade300;
              }
              return Colors.transparent;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return ColorManager.softGrey;
              } else if (states.contains(WidgetState.pressed)) {
                return Colors.white;
              }
              return ColorManager.primaryColor;
            },
          ),
          overlayColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return ColorManager.primarySwatch.shade100;
              } else if (states.contains(WidgetState.pressed)) {
                return ColorManager.primarySwatch.shade300;
              }
              return ColorManager.surface;
            },
          ),
          padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 10.h,
                );
              } else if (states.contains(WidgetState.hovered)) {
                return EdgeInsets.symmetric(
                  horizontal: 23.w,
                  vertical: 10.h,
                );
              }
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            },
          ),
          textStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.softGrey,
                );
              } else if (states.contains(WidgetState.hovered)) {
                return TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              } else if (states.contains(WidgetState.pressed)) {
                return TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              }
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            },
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return ColorManager.grey;
                } else if (states.contains(WidgetState.hovered)) {
                  return ColorManager.primarySwatch.shade700;
                } else if (states.contains(WidgetState.pressed)) {
                  return ColorManager.primarySwatch.shade700;
                }
                return ColorManager.primaryColor;
              },
            ),
            overlayColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) {
                  return ColorManager.primarySwatch.shade700;
                } else if (states.contains(WidgetState.pressed)) {
                  return ColorManager.primarySwatch.shade700;
                }
                return ColorManager.surface;
              },
            ),
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return ColorManager.softGrey;
                } else if (states.contains(WidgetState.hovered)) {
                  return ColorManager.surface;
                } else if (states.contains(WidgetState.pressed)) {
                  return ColorManager.surface;
                }
                return ColorManager.surface;
              },
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            textStyle: WidgetStateProperty.resolveWith<TextStyle>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return TextStyle(
                  fontFamily:   languageCode ==
                        'ar'
                        ? FontConstants.almaraiFontFamily
                        : FontConstants.ibmPlexSansFontFamily,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.surface,
                  );
                } else if (states.contains(WidgetState.hovered)) {
                  return TextStyle(
                    fontFamily:   languageCode ==
                        'ar'
                        ? FontConstants.almaraiFontFamily
                        : FontConstants.ibmPlexSansFontFamily,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.surface,
                  );
                } else if (states.contains(WidgetState.pressed)) {
                  return TextStyle(
                    fontFamily:   languageCode ==
                        'ar'
                        ? FontConstants.almaraiFontFamily
                        : FontConstants.ibmPlexSansFontFamily,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.surface,
                  );
                }

                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorManager.surface,
                );
              },
            ),
          )),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          // backgroundColor: MaterialStateProperty.resolveWith<Color>(
          //   (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.disabled)) {
          //       return Colors.transparent;
          //     } else if (states.contains(MaterialState.hovered)) {
          //       return ColorManager.primarySwatch.shade100;
          //     } else if (states.contains(MaterialState.pressed)) {
          //       return ColorManager.primarySwatch.shade300;
          //     }
          //     return Colors.transparent;
          //   },
          // ),
          // overlayColor: MaterialStateProperty.resolveWith<Color>(
          //   (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.hovered)) {
          //       return ColorManager.primarySwatch.shade100;
          //     } else if (states.contains(MaterialState.pressed)) {
          //       return ColorManager.primarySwatch.shade300;
          //     }
          //     return ColorManager.surface;
          //   },
          // ),
          // foregroundColor: MaterialStateProperty.resolveWith<Color>(
          //   (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.disabled)) {
          //       return ColorManager.softGrey;
          //     } else if (states.contains(MaterialState.hovered)) {
          //       return ColorManager.primaryColor;
          //     } else if (states.contains(MaterialState.pressed)) {
          //       return ColorManager.primaryColor;
          //     }
          //     return ColorManager.primaryColor;
          //   },
          // ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          textStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.softGrey,
                );
              } else if (states.contains(WidgetState.hovered)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              } else if (states.contains(WidgetState.pressed)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              } else if (states.contains(WidgetState.focused)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              }
              return TextStyle(
                fontFamily:   languageCode ==
                    'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            },
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor:
          WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            return ColorManager.primaryColorDark;
          }),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return Colors.transparent;
              } else if (states.contains(WidgetState.hovered)) {
                return ColorManager.primarySwatch.shade100;
              } else if (states.contains(WidgetState.pressed)) {
                return ColorManager.primaryColorLightOpacity;
              }
              return Colors.transparent;
            },
          ),
          overlayColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return ColorManager.primarySwatch.shade100;
              } else if (states.contains(WidgetState.pressed)) {
                return ColorManager.primaryColorLightOpacity;
              }
              return Colors.transparent;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return ColorManager.softGrey;
              } else if (states.contains(WidgetState.hovered)) {
                return ColorManager.primaryColor;
              } else if (states.contains(WidgetState.pressed)) {
                return ColorManager.primaryColor;
              }
              return ColorManager.primaryColor;
            },
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          textStyle: WidgetStateProperty.resolveWith<TextStyle>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.softGrey,
                );
              } else if (states.contains(WidgetState.hovered)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              } else if (states.contains(WidgetState.pressed)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              } else if (states.contains(WidgetState.focused)) {
                return TextStyle(
                  fontFamily:   languageCode ==
                      'ar'
                      ? FontConstants.almaraiFontFamily
                      : FontConstants.ibmPlexSansFontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManager.primaryColor,
                );
              }
              return TextStyle(
                fontFamily:   languageCode ==
                    'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            },
          ),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          // active
          if (states.contains(WidgetState.selected)) {
            return ColorManager.primaryColor;
          }
          // inactive
          return ColorManager.primaryColorDark;
        }),
      ));
}

get darkTheme => ThemeData(
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: ColorManager.primaryColorDark),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.whiteGrey,
        )),
    dividerColor: ColorManager.greyLight,
    primaryColor: ColorManager.primaryColor,
    disabledColor: ColorManager.darkGrey,
    primarySwatch: ColorManager.primarySwatch,
    focusColor: ColorManager.surface,
    iconTheme: const IconThemeData(color: ColorManager.surface),
    cardColor: const Color(0xFF041B29),
    canvasColor: const Color(0xFF304C60),
    scaffoldBackgroundColor: ColorManager.primaryColorDark,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 60.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      displayMedium: TextStyle(
        fontSize: 50.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      displaySmall: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.w500,
        color: ColorManager.whiteGrey,
      ),
      headlineLarge: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      headlineMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      headlineSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      bodySmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      labelMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
    ),
    primaryTextTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: ColorManager.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
    ),
    dataTableTheme: DataTableThemeData(
      headingRowColor: WidgetStateColor.resolveWith(
        (states) => ColorManager.primaryColorSoft,
      ),
      dataRowColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return ColorManager.primarySwatch.shade50;
          } else if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade50;
          }

          return ColorManager.surface;
        },
      ),
      headingTextStyle: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      dataTextStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      dividerThickness: 1,
    ),
    colorScheme: const ColorScheme.light(
      primary: ColorManager.primaryColor,
      onPrimary: ColorManager.surface,
      secondary: ColorManager.primaryColorLight,
      primaryContainer: ColorManager.primaryContainer,
      onPrimaryContainer: ColorManager.surface,
      shadow: ColorManager.shadow,
      surface: ColorManager.surface,
      error: ColorManager.error,
      surfaceTint: Colors.transparent,
      brightness: Brightness.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w200,
        color: ColorManager.darkGrey,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      // filled: true,
      errorStyle: TextStyle(
        color: ColorManager.error,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      fillColor: ColorManager.surface,
      hoverColor: ColorManager.grey,
      focusColor: ColorManager.grey,
      labelStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.greyLight,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.primaryColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.error,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15.r),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.softGrey,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.primaryColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return const BorderSide(
                color: ColorManager.softGrey,
                width: 1,
                style: BorderStyle.solid,
              );
            }
            return const BorderSide(
              color: ColorManager.primaryColor,
              width: 1,
              style: BorderStyle.solid,
            );
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primarySwatch.shade300;
            }
            return Colors.transparent;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return Colors.white;
            }
            return ColorManager.primaryColor;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primarySwatch.shade300;
            }
            return ColorManager.surface;
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ColorManager.grey;
          } else if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade700;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.primarySwatch.shade700;
          }
          return ColorManager.primaryColor;
        },
      ),
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade700;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.primarySwatch.shade700;
          }
          return ColorManager.surface;
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ColorManager.softGrey;
          } else if (states.contains(WidgetState.hovered)) {
            return ColorManager.surface;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.surface;
          }
          return ColorManager.surface;
        },
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.surface,
            );
          } else if (states.contains(WidgetState.hovered)) {
            return TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.surface,
            );
          } else if (states.contains(WidgetState.pressed)) {
            return TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.surface,
            );
          }
          return TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: ColorManager.surface,
          );
        },
      ),
    )),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        // backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.disabled)) {
        //       return Colors.transparent;
        //     } else if (states.contains(MaterialState.hovered)) {
        //       return ColorManager.primarySwatch.shade100;
        //     } else if (states.contains(MaterialState.pressed)) {
        //       return ColorManager.primarySwatch.shade300;
        //     }
        //     return Colors.transparent;
        //   },
        // ),
        // overlayColor: MaterialStateProperty.resolveWith<Color>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.hovered)) {
        //       return ColorManager.primarySwatch.shade100;
        //     } else if (states.contains(MaterialState.pressed)) {
        //       return ColorManager.primarySwatch.shade300;
        //     }
        //     return ColorManager.surface;
        //   },
        // ),
        // foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.disabled)) {
        //       return ColorManager.softGrey;
        //     } else if (states.contains(MaterialState.hovered)) {
        //       return ColorManager.primaryColor;
        //     } else if (states.contains(MaterialState.pressed)) {
        //       return ColorManager.primaryColor;
        //     }
        //     return ColorManager.primaryColor;
        //   },
        // ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.focused)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          return ColorManager.surface;
        }),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColorLightOpacity;
            }
            return Colors.transparent;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColorLightOpacity;
            }
            return Colors.transparent;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primaryColor;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColor;
            }
            return ColorManager.primaryColor;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.focused)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        // active
        if (states.contains(WidgetState.selected)) {
          return ColorManager.primaryColor;
        }
        // inactive
        return ColorManager.surface;
      }),
    ));

get carDetailsTheme => ThemeData(
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: ColorManager.primaryColorDark),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: ColorManager.whiteGrey,
        )),
    dividerColor: ColorManager.greyLight,
    primaryColor: ColorManager.primaryColor,
    disabledColor: ColorManager.darkGrey,
    primarySwatch: ColorManager.primarySwatch,
    focusColor: ColorManager.surface,
    iconTheme: const IconThemeData(color: ColorManager.surface),
    cardColor: const Color(0xFF041B29),
    canvasColor: const Color(0xFF304C60),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 60.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      displayMedium: TextStyle(
        fontSize: 50.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      displaySmall: TextStyle(
        fontSize: 40.sp,
        fontWeight: FontWeight.w500,
        color: ColorManager.whiteGrey,
      ),
      headlineLarge: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      headlineMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      headlineSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteGrey,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      bodySmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      labelMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
      labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.whiteGrey,
      ),
    ),
    primaryTextTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorManager.primaryColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      bodySmall: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
      labelSmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.primaryColor,
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: ColorManager.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
    ),
    dataTableTheme: DataTableThemeData(
      headingRowColor: WidgetStateColor.resolveWith(
        (states) => ColorManager.primaryColorSoft,
      ),
      dataRowColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return ColorManager.primarySwatch.shade50;
          } else if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade50;
          }

          return ColorManager.surface;
        },
      ),
      headingTextStyle: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      dataTextStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.black,
      ),
      dividerThickness: 1,
    ),
    colorScheme: const ColorScheme.light(
      primary: ColorManager.primaryColor,
      onPrimary: ColorManager.surface,
      secondary: ColorManager.primaryColorLight,
      primaryContainer: ColorManager.primaryContainer,
      onPrimaryContainer: ColorManager.surface,
      shadow: ColorManager.shadow,
      surface: ColorManager.surface,
      error: ColorManager.error,
      surfaceTint: Colors.transparent,
      brightness: Brightness.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w200,
        color: ColorManager.darkGrey,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      // filled: true,
      errorStyle: TextStyle(
        color: ColorManager.error,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      fillColor: ColorManager.surface,
      hoverColor: ColorManager.grey,
      focusColor: ColorManager.grey,
      labelStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: ColorManager.greyLight,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.primaryColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.error,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15.r),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.softGrey,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.primaryColor,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return const BorderSide(
                color: ColorManager.softGrey,
                width: 1,
                style: BorderStyle.solid,
              );
            }
            return const BorderSide(
              color: ColorManager.primaryColor,
              width: 1,
              style: BorderStyle.solid,
            );
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primarySwatch.shade300;
            }
            return Colors.transparent;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return Colors.white;
            }
            return ColorManager.primaryColor;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primarySwatch.shade300;
            }
            return ColorManager.surface;
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ColorManager.grey;
          } else if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade700;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.primarySwatch.shade700;
          }
          return ColorManager.primaryColor;
        },
      ),
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade700;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.primarySwatch.shade700;
          }
          return ColorManager.surface;
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ColorManager.softGrey;
          } else if (states.contains(WidgetState.hovered)) {
            return ColorManager.surface;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.surface;
          }
          return ColorManager.surface;
        },
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.surface,
            );
          } else if (states.contains(WidgetState.hovered)) {
            return TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.surface,
            );
          } else if (states.contains(WidgetState.pressed)) {
            return TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.surface,
            );
          }
          return TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: ColorManager.surface,
          );
        },
      ),
    )),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        // backgroundColor: MaterialStateProperty.resolveWith<Color>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.disabled)) {
        //       return Colors.transparent;
        //     } else if (states.contains(MaterialState.hovered)) {
        //       return ColorManager.primarySwatch.shade100;
        //     } else if (states.contains(MaterialState.pressed)) {
        //       return ColorManager.primarySwatch.shade300;
        //     }
        //     return Colors.transparent;
        //   },
        // ),
        // overlayColor: MaterialStateProperty.resolveWith<Color>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.hovered)) {
        //       return ColorManager.primarySwatch.shade100;
        //     } else if (states.contains(MaterialState.pressed)) {
        //       return ColorManager.primarySwatch.shade300;
        //     }
        //     return ColorManager.surface;
        //   },
        // ),
        // foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.disabled)) {
        //       return ColorManager.softGrey;
        //     } else if (states.contains(MaterialState.hovered)) {
        //       return ColorManager.primaryColor;
        //     } else if (states.contains(MaterialState.pressed)) {
        //       return ColorManager.primaryColor;
        //     }
        //     return ColorManager.primaryColor;
        //   },
        // ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.focused)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          return ColorManager.surface;
        }),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColorLightOpacity;
            }
            return Colors.transparent;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade100;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColorLightOpacity;
            }
            return Colors.transparent;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primaryColor;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColor;
            }
            return ColorManager.primaryColor;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.focused)) {
              return TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        // active
        if (states.contains(WidgetState.selected)) {
          return ColorManager.primaryColor;
        }
        // inactive
        return ColorManager.surface;
      }),
    ));

extension BorderThemeExtinssion on ThemeData {
  BorderSide get defaultBorderSide => (isDarkTheme)
      ? const BorderSide(
          color: ColorManager.primaryColor,
          width: 1,
          style: BorderStyle.solid,
        )
      : const BorderSide(
          color: ColorManager.primaryColor, width: 1, style: BorderStyle.solid);

  InputDecorationTheme get secondaryInputBorderTheme => InputDecorationTheme(
        filled: true,
        errorStyle: TextStyle(
          color: ColorManager.error,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        fillColor: ColorManager.surface,
        hoverColor: ColorManager.grey,
        focusColor: ColorManager.grey,
        labelStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.darkGrey,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.greyLight,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.error,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.r),
        ),
      );

  BorderSide get defaultBorderSideLight => const BorderSide(
        color: ColorManager.primaryColorLight,
        width: 1,
        style: BorderStyle.solid,
      );

  BorderSide get defaultBorderSideError => const BorderSide(
        color: ColorManager.error,
        width: 1,
        style: BorderStyle.solid,
      );

  BorderSide get defaultBorderSideShadow => const BorderSide(
        color: ColorManager.shadow,
        width: 1,
        style: BorderStyle.solid,
      );
}

extension ButtonThemeExtinssion on ThemeData {
  ButtonStyle get secondaryElevatedButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.surface;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.greyLight;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.greyLight;
            }
            return ColorManager.surface;
          },
        ),
        overlayColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return ColorManager.greyLight;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.greyLight;
          }
          return ColorManager.surface;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.surface;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.surface;
            }
            return ColorManager.surface;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
      );

  ButtonStyle get primaryElevatedButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.primaryColor;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primarySwatch.shade700;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primarySwatch.shade700;
            }
            return ColorManager.primaryColor;
          },
        ),
        overlayColor:
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.hovered)) {
            return ColorManager.primarySwatch.shade700;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorManager.primarySwatch.shade700;
          }
          return ColorManager.primaryColor;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.primaryColor;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryColor;
            }
            return ColorManager.primaryColor;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
      );

  ButtonStyle get errorElevatedButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.grey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLight;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.error;
            }
            return ColorManager.error;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLight;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.error;
            }
            return ColorManager.surface;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.surface;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.surface;
            }
            return ColorManager.surface;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.surface,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.surface,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.surface,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.surface,
            );
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
      );

  ButtonStyle get surfaceElevatedButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.grey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.whiteGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.surface;
            }
            return ColorManager.surface;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.whiteGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.surface;
            }
            return ColorManager.surface;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.darkGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.darkGrey;
            }
            return ColorManager.darkGrey;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.greyLight,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primarySwatch.shade300,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: ColorManager.primaryColor,
            );
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
      );

  ButtonStyle get borderElevatedButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.secondaryColor;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.secondaryColor;
            }
            return ColorManager.secondaryColor;
          },
        ),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        side: WidgetStateProperty.all(
            const BorderSide(color: ColorManager.secondaryColor)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.greyLight,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.secondaryColor,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.secondaryColor,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.secondaryColor,
            );
          },
        ),
        padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return EdgeInsets.symmetric(
                horizontal: 23.w,
                vertical: 10.h,
              );
            }
            return EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            );
          },
        ),
      );

  ButtonStyle get secondaryTextButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.softGrey;
            }
            return Colors.transparent;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.softGrey;
            }
            return ColorManager.surface;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.secondaryGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.secondaryGrey;
            }
            return ColorManager.secondaryGrey;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.secondaryGrey,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.secondaryGrey,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.secondaryGrey,
            );
          },
        ),
      );

  ButtonStyle get errorTextButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLightOpacity;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.errorLight;
            }
            return Colors.transparent;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLightOpacity;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.errorLight;
            }
            return ColorManager.surface;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.error;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.error;
            }
            return ColorManager.error;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.error,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.error,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.error,
            );
          },
        ),
      );

  ButtonStyle get secondaryIconButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.secondaryGreyLight;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.secondaryGreyDark;
            }
            return Colors.transparent;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.secondaryGreyLight;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.secondaryGreyDark;
            }
            return ColorManager.surface;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.secondaryGrey;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.secondaryGrey;
            }
            return ColorManager.secondaryGrey;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.secondaryGrey,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.secondaryGrey,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.secondaryGrey,
            );
          },
        ),
      );

  DataTableThemeData get inactiveDataRow => DataTableThemeData(
        dataTextStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorManager.softGrey,
        ),
        dividerThickness: 1,
      );

  ButtonStyle get errorIconButtonTheme => ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLightOpacity;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.errorLightOpacity;
            }
            return Colors.transparent;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLightOpacity;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.errorLightOpacity;
            }
            return ColorManager.surface;
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return ColorManager.softGrey;
            } else if (states.contains(WidgetState.hovered)) {
              return ColorManager.errorLightOpacity;
            } else if (states.contains(WidgetState.pressed)) {
              return ColorManager.errorLightOpacity;
            }
            return ColorManager.errorLightOpacity;
          },
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.softGrey,
              );
            } else if (states.contains(WidgetState.hovered)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.error,
              );
            } else if (states.contains(WidgetState.pressed)) {
              return TextStyle(
                fontFamily: languageCode == 'ar'
                    ? FontConstants.almaraiFontFamily
                    : FontConstants.ibmPlexSansFontFamily,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: ColorManager.error,
              );
            }
            return TextStyle(
              fontFamily: languageCode == 'ar'
                  ? FontConstants.almaraiFontFamily
                  : FontConstants.ibmPlexSansFontFamily,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorManager.error,
            );
          },
        ),
      );
}

extension LanguageTheme on ThemeData {
  String get languageCode => this.extension<_LanguageCode>()?.code ?? 'en';
  ThemeData withLanguageCode(String code) => this.copyWith(
    extensions: [ _LanguageCode(code) ],
  );
}

class _LanguageCode extends ThemeExtension<_LanguageCode> {
  final String code;
  const _LanguageCode(this.code);

  @override
  _LanguageCode copyWith({String? code}) => _LanguageCode(code ?? this.code);

  @override
  _LanguageCode lerp(_LanguageCode? other, double t) => other ?? this;
}
