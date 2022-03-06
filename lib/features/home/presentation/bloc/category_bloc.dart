import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/get_category.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategory getCategory;

  CategoryBloc({required GetCategory category})
      : getCategory = category,
        super(CategoryInitial()) {
    on<FetchCategory>((event, emit) async {
      emit(CategoryLoading());
      try {
        final categories = await getCategory(const Params());

        if (categories != null) {
          emit(CategoryLoaded(categories: categories));
        } else {
          emit(CategoryEmpty());
        }
      } catch (e) {
        emit(CategoryFailToLoad(message: e.toString()));
      }
    });
  }
}
