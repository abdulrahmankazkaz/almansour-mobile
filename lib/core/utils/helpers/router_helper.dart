import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/dependency_injection.dart';
import '../../router/routes_manager.dart';
import '../local_storage/app_preferences.dart';

class RouterHelper {
  GoRoute? getRouteByPath(String path, List<RouteBase> routes) {
    GoRoute? foundRoute;

    void searchRoutes(List<RouteBase> routeList) {
      for (var route in routeList) {
        if (route is GoRoute) {
          if (route.path.replaceAll('/', '') == path.replaceAll('/', '')) {
            foundRoute = route;
            break;
          } else if (route is StatefulShellRoute) {
            if (route.path.replaceAll('/', '') == path.replaceAll('/', '')) {
              foundRoute = route;
              break;
            }
          }
        }
        if (route.routes.isNotEmpty) {
          searchRoutes(route.routes);
        }
      }
    }

    searchRoutes(routes);

    return foundRoute;
  }

  String getFullPathByPath(String path, List<RouteBase> routes) {
    String fullPath = '';
    bool matchFound = false;
    for (var route in routes) {
      if (matchFound) {
        break;
      }
      if (route is GoRoute) {
        if (route.path.replaceAll('/', '') == path.replaceAll('/', '')) {
          fullPath = route.path;
          matchFound = true;
        } else {
          for (var element in route.routes) {
            String nestedPath = getFullPathByPath(path, element.routes);
            if (nestedPath.isNotEmpty) {
              if (element is GoRoute) {
                fullPath = '${route.path}/${(element).path}/$nestedPath';
              } else if (element is StatefulShellRoute) {
                fullPath = '${route.path}/$nestedPath';
              }
              matchFound = true;
              break;
            }
          }
        }
      } else if (route is StatefulShellRoute) {
        for (var element in route.branches) {
          String nestedPath = getFullPathByPath(path, element.routes);
          if (nestedPath.isNotEmpty) {
            fullPath = nestedPath;
            matchFound = true;
            break;
          }
        }
      }
    }
    return fullPath;
  }

  Future<void> openLink(String? url) async {
    if (url?.isNotEmpty ?? false) {
      try {
        url = url!.trim();
        final uri = Uri.parse(url);

        final canLaunch = await canLaunchUrl(uri);
        if (!canLaunch) {
          LoggerService().logCatchDebug(
            message: 'No handler for: $uri',
          );
          return;
        }

        final launched = await launchUrl(uri);
        if (!launched) {
          LoggerService().logCatchDebug(
            message: 'Handler found but failed to launch: $uri',
          );
        }
      } catch (e, stack) {
        LoggerService().logCatchDebug(
          message: 'Exception while launching URL: $url',
          stackTrace: stack,
        );
      }
    } else {
      LoggerService().logCatchDebug(
        message: 'Invalid or empty URL: $url',
      );
    }
  }

  Future<void> openLinkWithBrowser(String? url) async {
    if (url?.isNotEmpty ?? false) {
      try {
        url = url!.trim();
        final uri = Uri.parse(url);

        final canLaunch = await canLaunchUrl(uri);
        if (!canLaunch) {
          LoggerService()
              .logCatchDebug(message: 'No app can handle this URL: $uri');
          return;
        }

        final launched =
            await launchUrl(uri, mode: LaunchMode.externalApplication);
        if (!launched) {
          LoggerService().logCatchDebug(
              message: 'Handler found but failed to launch URL: $uri');
        }
      } catch (e, stack) {
        LoggerService().logCatchDebug(
          message: 'Exception while launching URL: $url',
          stackTrace: stack,
        );
      }
    }
  }

  // openRouteAsLinkWithQuery(
  //     {String? url, Map<String, String>? queryParameters}) async {
  //   if (url?.isNotEmpty ?? false) {
  //     url = url!.trim();
  //     Uri uri = Uri.parse('${Constants.baseUrl}/${url ?? ''}');
  //     uri = uri.replace(queryParameters: queryParameters);
  //     if (await canLaunchUrl(uri)) {
  //       await launchUrl(
  //         uri,
  //       );
  //     } else {
  //       throw 'Cant open URL';
  //     }
  //   }
  // }

  logout() async {
    AppPreferences appPreferences = getIt<AppPreferences>();
    if (appPreferences.userPreferences.getUserToken?.isNotEmpty ?? false) {
      // await instance<LogOutUseCase>().execute();
    }
    await appPreferences.userPreferences.logOutPref();
  }

  logoutWithoutApi() async {
    AppPreferences appPreferences = getIt<AppPreferences>();
    await appPreferences.userPreferences.logOutPref();
  }

  clearAndNavigate(String name) {
    while (appRouter.canPop() == true) {
      appRouter.pop();
    }

    appRouter.pushReplacementNamed(name);
  }
}
