class NetworkHelper {
  bool isLinkValid(String? url) {
    if (url == null) {
      return false;
    }
    Uri uri = Uri.parse(url);
    return !uri.isAbsolute;
  }
}
