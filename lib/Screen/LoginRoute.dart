import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Login extends StatelessWidget {
  final Function(bool) onResult;
  const Login({super.key, required this.onResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text('Route'),
          ElevatedButton(
              onPressed: () => onResult.call(true), child: const Text("Login"))
        ],
      ),
    );
  }
}
