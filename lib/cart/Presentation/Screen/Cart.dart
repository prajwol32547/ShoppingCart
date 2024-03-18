import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practiceflutter/cart/Bloc/cart_bloc.dart';
import 'package:practiceflutter/cart/Bloc/cart_event.dart';
import 'package:practiceflutter/cart/Bloc/cart_state.dart';
import 'package:practiceflutter/cart/UI/Widget/CartTile.dart';

@RoutePage()
class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Future<List<dynamic>> fetchData() async {
    File file = File(
        '/home/prajwol/PracticeFlutter/practiceflutter/lib/cart/Data/cartData.json');
    String jsonString = await file.readAsString();
    List<dynamic> jsonData = jsonDecode(jsonString);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    late double totalPrice = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        leading: const AutoLeadingButton(color: Colors.teal),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(child: Text('Error loading data'));
                  } else if (snapshot.hasData) {
                    for (int index = 0;
                        index < snapshot.data!.length;
                        index++) {
                      totalPrice += double.parse(
                          snapshot.data![index]['price'].toString());
                    }
                    print(totalPrice);

                    // Update CartBloc with the total amount
                    context
                        .read<CartBloc>()
                        .add(OnTotalChangeEvent(totalAmount: totalPrice));
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        List productData = [
                          snapshot.data![index]['productName'],
                          snapshot.data![index]['description'],
                          snapshot.data![index]['imagePath'],
                          snapshot.data![index]['price']
                        ];

                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration:
                              BoxDecoration(border: Border.all(width: 0.4)),
                          child: CartTile(productData),
                        );
                      },
                    );
                  } else {
                    return const Center(child: Text('No data available'));
                  }
                },
              ),
            ),
            BlocConsumer<CartBloc, CartState>(
              builder: (context, state) {
                return SizedBox(
                  height: 40,
                  child: Text(
                      'Total Price: ${state.totalAmount.toStringAsFixed(2)}'), // Display total price
                );
              },
              listener: (BuildContext context, CartState state) {
                if (totalPrice != state.totalAmount) {
                  print("************************");
                  print(state.totalAmount);
                  print("************************");
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout functionality
                // For example: navigate to checkout page
              },
              child:
                  const Text('Checkout', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
