import 'dart:typed_data';

// import 'package:file_picker/file_picker.dart';

class FileHelper {
  static const List<String> defaultAllowedExtensions = [
    'pdf',
    'png',
    'jpeg',
    'jpg',
    'doc'
  ];

  Future<void> downloadFile(Uint8List unit8list, String filename) async {

  }

  String fileNameFromUrl({required String url, bool returnShortString = true}) {
    Uri uri = Uri.parse(url);
    List<String> pathSegments = uri.pathSegments;
    // Get the last segment, which should be the file name
    if (pathSegments.isNotEmpty) {
      String fileName = pathSegments.last;
      // Ensure the file name is not longer than 5 characters
      if (returnShortString) {
        return fileName.length <= 5
            ? fileName
            : '${fileName.substring(0, 5)}...';
      } else {
        return fileName;
      }
    } else {
      // If there are no segments, you can return a default name or handle it as needed
      return 'unknown';
    }
  }

  // Future<FilePickerResult?> pickFiles(
  //     {bool allowMultiple = true,
  //     List<String> allowedExtensions = defaultAllowedExtensions}) async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     allowMultiple: allowMultiple,
  //     type: FileType.custom,
  //     lockParentWindow: true,
  //     allowedExtensions: allowedExtensions,
  //   );
  //   return result;
  // }

  String getFileExtension(String? fileName) {
    return fileName?.split('.').last.toLowerCase() ?? '';
  }
}
