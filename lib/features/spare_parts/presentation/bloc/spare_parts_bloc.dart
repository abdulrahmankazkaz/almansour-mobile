import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../domain/usecases/get_spare_parts.dart';
import '../../entities/spare_part.dart';

part 'spare_parts_bloc.freezed.dart';
part 'spare_parts_event.dart';
part 'spare_parts_state.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

class SparePartsBloc extends Bloc<SparePartsEvent, SparePartsState> {
  final GetSpareParts _getSpareParts = getIt<GetSpareParts>();
  List<SparePart> spareParts = [];

  SparePartsBloc() : super(const SparePartsState.initial()) {
    on<SparePartsEvent>((event, emit) async {
      await event.map(
          started: (value) {},
          getSpareParts: (value) async =>
              await _onGetSparePartsEvent(emit, value),
          searchSpareParts: (value) async => await _onSearchSparePartsEvent(emit, value));
    });
  }

  Future<void> _onGetSparePartsEvent(
      Emitter<SparePartsState> emit, _GetSpareParts value) async {
    if(spareParts.isEmpty || value.refresh ==true) {
      try {
      emit(const SparePartsState.loading());
      await Future.sync(() async =>
          (await _getSpareParts.execute(NoParams())).when((success) async {
            spareParts = success;
            emit(SparePartsState.loaded(success));
          }, (error) => emit(SparePartsState.failed(error.message))));
    } catch (e) {
      emit(SparePartsState.failed(e.toString()));
    }
    }
    else{
      emit(SparePartsState.loaded(spareParts));
    }
  }
  Future<void> _onSearchSparePartsEvent(Emitter<SparePartsState> emit, _SearchSpareParts value) async {
    try {
      if (value.text.isEmpty) {
        emit(SparePartsState.loaded(spareParts));
      } else {
        emit(const SparePartsState.loading());
        final filteredSpareParts =  spareParts.where((sparePart) =>
            sparePart.name!
                .toLowerCase()
                .contains(value.text.toLowerCase())).toList();
        filteredSpareParts.isEmpty?emit(const SparePartsState.empty()):
        emit(SparePartsState.loaded(filteredSpareParts)); // Emit filtered list based on search text
      }
    } catch (e) {
      emit(SparePartsState.failed(e.toString()));
    }
  }
}



