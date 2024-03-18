import 'package:flutter/material.dart';
import 'package:practiceflutter/Routes/app_router.dart';
import 'package:practiceflutter/cart/Bloc/cart_bloc.dart';
import 'package:practiceflutter/home/Bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.amber[40],
          primaryColorDark: Colors.black45,
          buttonTheme: const ButtonThemeData(hoverColor: Colors.green),
        ),
        darkTheme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(
            primary: Colors.amberAccent,
            secondary: Colors.teal,
          ),
        ),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
