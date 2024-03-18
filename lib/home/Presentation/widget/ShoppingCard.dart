import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practiceflutter/home/Bloc/home_bloc.dart';
import 'package:practiceflutter/home/Bloc/home_event.dart';
import 'package:practiceflutter/home/Bloc/home_state.dart';

Widget ShoppingCard() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.4),
      ),
      child: Column(
        children: [
          const Card(
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: Text('Image'),
            ),
          ),
          Row(
            children: [
              Expanded(child: Container()),
              BlocConsumer<HomeBloc, HomeState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return IconButton(
                    onPressed: () => {
                      context
                          .read<HomeBloc>()
                          .add(CartButtonClickedEvent(color: Colors.red))
                    },
                    icon: Icon(Icons.favorite_border, color: state.color
                        // Handle null color
                        ),
                  );
                },
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.shopping_cart_outlined),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
