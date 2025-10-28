import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/features/main/domain/usecases/upload_image.dart';

part 'image_event.dart';

part 'image_state.dart';

part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final UploadImage _uploadImage = getIt<UploadImage>();

  ImageBloc() : super(const ImageState.initial()) {
    on<ImageEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          uploadImage: (value) async => await _onUploadImage(emit,value));
    });
  }

  Future<void> _onUploadImage(Emitter<ImageState> emit,_UploadImage event) async {
    try {
      emit(const ImageState.loading());
      (await _uploadImage.execute(event.image)).when(
              (success) async {emit(ImageState.uploaded(success.data.url));},
              (error) => emit(ImageState.failed(error.message)));
    } catch (e) {
    emit(const ImageState.failed('Server Error'));
    }
  }
}
