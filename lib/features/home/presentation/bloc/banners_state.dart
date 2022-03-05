part of 'banners_bloc.dart';

abstract class BannersState extends Equatable {
  const BannersState();

  @override
  List<Object> get props => [];
}

class BannersInitial extends BannersState {}

class BannersLoading extends BannersState {}

class BannersEmpty extends BannersState {}

class BannersLoaded extends BannersState {
  final List<Banners> banners;

  const BannersLoaded({required this.banners});
}

class BannersFailToLoad extends BannersState {
  final String message;

  const BannersFailToLoad({required this.message});
}
