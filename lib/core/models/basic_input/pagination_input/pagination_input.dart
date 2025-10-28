import 'package:dio/dio.dart';

class PaginationParams {
  final int page;


  PaginationParams({required this.page});
}

class SearchInput {
  final CancelToken cancelToken;
  final String? value;

  SearchInput({
    required this.cancelToken,
    this.value,
  });
}
