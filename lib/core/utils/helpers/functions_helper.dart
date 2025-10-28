import 'dart:math';

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';


class FunctionsHelper {

  String getFirstLettersWithSpace(String input) {
    List<String> words =
    input.split(' '); // Split the input string into a list of words
    List<String> firstLetters = words
        .map((word) => word.characters.firstOrNull ?? '')
        .toList(); // Extract the first letter of each word
    return firstLetters
        .join(' '); // Join the first letters into a single string
  }

  String createIdFromUrlAndDateTime(String url) {
    // Generate a unique ID using a combination of URL and current timestamp
    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    String id = Random().nextInt(5000).toString() +
        url.hashCode.toRadixString(16) +
        timestamp;
    // Ensure the ID is not too long (e.g., limit it to 16 characters)
    if (id.length > 16) {
      id = id.substring(0, 16);
    }
    return id;
  }

  String showNumber(value) => value == null ? '' : value.toString();

  String addLeadingZeros(String input) {
    // Check if the input string length is less than 6
    if (input.length < 6) {
      // Calculate the number of zeros needed
      int zerosToAdd = 6 - input.length;
      // Add leading zeros
      return '0' * zerosToAdd + input;
    } else {
      // If the input string length is already 6 or more, return the input string as it is
      return input;
    }
  }
  String?  insertPeriod(String? input) {
    if (input == null || input.isEmpty) return input;

    final length = input.length;
    final periodCount = (length / 3).floor();
    final remainder = length % 3;

    if (periodCount == 0) return input;

    final buffer = StringBuffer();

    // Insert the first group of characters
    buffer.write(input.substring(0, remainder));

    // Insert periods after every three characters starting from the fourth character
    for (var i = 0; i < periodCount; i++) {
      final startIndex = remainder + (i * 3);
      if (i > 0 || remainder > 0) {
        buffer.write(',');
      }
      buffer.write(input.substring(startIndex, startIndex + 3));
    }

    return buffer.toString();
  }

  bool isImage(String fileName) {
    final imageExtensions = ['jpg', 'png', 'gif'];
    final extension = fileName.split('.').last.toLowerCase();
    return imageExtensions.contains(extension);
  }

  bool isVideo(String fileName) {
    final videoExtensions = ['mp4'];
    final extension = fileName.split('.').last.toLowerCase();
    return videoExtensions.contains(extension);
  }


  Future<String> getReleaseVersion() async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();


    return packageInfo.version;
  }

}
