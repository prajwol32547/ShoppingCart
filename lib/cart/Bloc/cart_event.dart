abstract class CartEvent {}

class CartProductLoadedEvent extends CartEvent {}

class CartProductLoadingEvent extends CartEvent {}

class CartProductingLoadingError extends CartEvent {}

class OnTotalChangeEvent extends CartEvent {
  double totalAmount;

  OnTotalChangeEvent({required this.totalAmount});
  List<Object> get props => [totalAmount];
}
