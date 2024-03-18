import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeProductDart extends StatelessWidget {
  const HomeProductDart({super.key});
  @override
  void initState() {
    print('initialized');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const AutoLeadingButton(
            color: Colors.teal,
            showIfParentCanPop: true,
          ),
        ),
        body: Container(child: const Text(' I am inside Home')));
  }
}
