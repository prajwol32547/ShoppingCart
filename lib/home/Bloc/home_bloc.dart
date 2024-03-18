import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';
import 'package:practiceflutter/home/Bloc/home_event.dart';
import 'package:practiceflutter/home/Bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<CartButtonClickedEvent>(_cartButtonClicked);
  }

  void _cartButtonClicked(
      CartButtonClickedEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(color: event.color));
  }
}
