import 'package:equatable/equatable.dart';

class CartState extends Equatable {
  final double totalAmount;

  const CartState({this.totalAmount = 0.0});

  @override
  List<Object?> get props => [totalAmount];

  CartState copyWith({double? totalAmount}) {
    return CartState(totalAmount: totalAmount ?? this.totalAmount);
  }
}
