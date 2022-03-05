import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/categories.dart';
import '../../domain/usecases/get_categories.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final GetCategories getCategories;

  CategoriesBloc({required GetCategories categories})
      : getCategories = categories,
        super(CategoriesInitial()) {
    on<FetchCategories>((event, emit) async {
      emit(CategoriesLoading());
      try {
        final categories = await getCategories(const Params());

        if (categories != null) {
          emit(CategoriesLoaded(categories: categories));
        } else {
          emit(CategoriesEmpty());
        }
      } catch (e) {
        emit(CategoriesFailToLoad(message: e.toString()));
      }
    });
  }
}
