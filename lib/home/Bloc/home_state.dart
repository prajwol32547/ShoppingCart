import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class HomeState extends Equatable {
  final Color color;
  bool isClicked;

  // Override the props getter to return a list of color
  @override
  List<dynamic> get props => [color, isClicked];

  // Constructor to initialize the color with default value
  HomeState({this.color = Colors.black, this.isClicked = false});

  // Method to create a new instance of HomeState with updated color
  HomeState copyWith({Color? color}) {
    return HomeState(color: color ?? this.color);
  }
}
