import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kodingworkstest/features/home/domain/entities/product.dart';
import 'package:kodingworkstest/features/home/domain/usecases/get_product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProduct getProduct;

  ProductBloc({required GetProduct product})
      : getProduct = product,
        super(ProductInitial()) {
    on<FetchProduct>((event, emit) async {
      emit(ProductLoading());
      try {
        final products = await getProduct(const Params());

        if (products != null) {
          emit(ProductLoaded(products: products));
        } else {
          emit(ProductEmpty());
        }
      } catch (e) {
        emit(ProductFailToLoad(message: e.toString()));
      }
    });
  }
}
