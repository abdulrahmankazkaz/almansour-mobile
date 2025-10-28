import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../entities/promotions_entities/promotion/promotion.dart';

part 'promotion_details_bloc.freezed.dart';
part 'promotion_details_event.dart';
part 'promotion_details_state.dart';

class PromotionDetailsBloc
    extends Bloc<PromotionDetailsEvent, PromotionDetailsState> {
  PromotionDetailsBloc() : super(const PromotionDetailsState.initial()) {
    on<PromotionDetailsEvent>((event, emit) {
      event.map(
          started: (value) {},
          setPromotionDetails: (_SetPromotionDetails value) =>
              _onSetPromotionDetails(emit, value));
    });
  }

  void _onSetPromotionDetails(
      Emitter<PromotionDetailsState> emit, _SetPromotionDetails event) {
    emit(PromotionDetailsState.loaded(event.promotion));
  }
}
