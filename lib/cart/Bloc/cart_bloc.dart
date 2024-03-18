import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practiceflutter/cart/Bloc/cart_event.dart';
import 'package:practiceflutter/cart/Bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super((CartState())) {
    on<CartEvent>((event, emit) {});
    on<CartProductLoadingEvent>(
        (event, emit) => const CircularProgressIndicator());
    on<CartProductingLoadingError>((event, emit) {});
    on<OnTotalChangeEvent>((event, emit) {
      emit(state.copyWith(totalAmount: event.totalAmount));
    });
  }
}
