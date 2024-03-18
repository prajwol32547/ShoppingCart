import 'package:flutter/material.dart';

import 'home_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();
  @override
  List<Object> get props => [];
}

class HomeProductWishListButtonClickedEvent extends HomeEvent {}

class WishListNavigateEvent extends HomeEvent {}

class CartButtonClickedEvent extends HomeEvent {
  late Color color;
  CartButtonClickedEvent({required this.color});
}

class CartButtonNavigateEvent extends HomeEvent {}
