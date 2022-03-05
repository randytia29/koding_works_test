import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/banners.dart';
import '../../domain/usecases/get_banners.dart';

part 'banners_event.dart';
part 'banners_state.dart';

class BannersBloc extends Bloc<BannersEvent, BannersState> {
  final GetBanners getBanners;

  BannersBloc({required GetBanners banners})
      : getBanners = banners,
        super(BannersInitial()) {
    on<FetchBanners>((event, emit) async {
      emit(BannersLoading());
      try {
        final banners = await getBanners(Params());

        if (banners != null) {
          emit(BannersLoaded(banners: banners));
        } else {
          emit(BannersEmpty());
        }
      } catch (e) {
        emit(BannersFailToLoad(message: e.toString()));
      }
    });
  }
}
