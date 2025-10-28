import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mac_mobile/features/marketing/domain/use_cases/show_promotion.dart';

import '../../../../../app/dependency_injection.dart';
import '../../../../profile/entities/no_params.dart';
import '../../../domain/use_cases/get_promotions.dart';
import '../../../entities/promotions_entities/promotion/promotion.dart';

part 'promotions_bloc.freezed.dart';
part 'promotions_event.dart';
part 'promotions_state.dart';

class PromotionsBloc extends Bloc<PromotionsEvent, PromotionsState> {
  final GetPromotions _getPromotions = getIt<GetPromotions>();
  final ShowPromotion _showPromotions = getIt<ShowPromotion>();

  PromotionsBloc() : super(const PromotionsState.initial()) {
    on<PromotionsEvent>((event, emit) async {
      await event.map(
        started: (value) {},
        getPromotions: (value) async =>
            await _onGetPromotionsEvent(emit, value),
        showPromotion: (value) async =>
            await _onShowPromotionEvent(emit, value),
        getBannerPromotions: (value) async =>
            await _onGetBannerPromotionsEvent(emit, value),
      );
    });
  }

  Future<void> _onGetPromotionsEvent(
      Emitter<PromotionsState> emit, _GetPromotions event) async {
    try {
      emit(const PromotionsState.loading());
      var result = await _getPromotions.execute(NoParams());
      await result.whenSuccess((success) async {
        emit(PromotionsState.loaded(promotions: success));
      });
      result.whenError((error) => emit(PromotionsState.failed(error.message)));
    } catch (e) {
      emit(PromotionsState.failed(e.toString()));
    }
  }

  Future<void> _onShowPromotionEvent(
      Emitter<PromotionsState> emit, _ShowPromotions event) async {
    try {
      emit(const PromotionsState.loading());
      var result = await _showPromotions.execute(event.id);
      await result.whenSuccess((success) async {
        emit(PromotionsState.loaded(promotions: success));
      });
      result.whenError((error) => emit(PromotionsState.failed(error.message)));
    } catch (e) {
      emit(PromotionsState.failed(e.toString()));
    }
  }

  Future<void> _onGetBannerPromotionsEvent(
      Emitter<PromotionsState> emit, _GetBannerPromotions event) async {
    try {
      emit(const PromotionsState.bannerLoading());
      var result = await _getPromotions.execute(NoParams());
      await result.whenSuccess((success) async {
        List<Promotion> promotions =
            success.where((element) => element.showedInBanner).toList();
        emit(PromotionsState.bannerPromotionsLoaded(promotions: promotions));
      });
      result.whenError((error) => emit(PromotionsState.failed(error.message)));
    } catch (e) {
      emit(PromotionsState.failed(e.toString()));
    }
  }
}
