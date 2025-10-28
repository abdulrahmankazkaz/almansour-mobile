part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState.initial() = _Initial;
  const factory ImageState.loading() = _Loading;
  const factory ImageState.uploaded(String imageUrl) = _Uploaded;
  const factory ImageState.failed(String errorMessage) = _Failed;
}
