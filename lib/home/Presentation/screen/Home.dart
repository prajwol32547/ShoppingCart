import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practiceflutter/Routes/app_router.gr.dart';
import 'package:practiceflutter/home/Bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practiceflutter/home/Bloc/home_event.dart';
import 'package:practiceflutter/home/Bloc/home_state.dart';
import 'package:practiceflutter/home/Presentation/widget/ShoppingCard.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homebloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    // final tabsRouter = AutoTabsRouter.tabBar(routes: [CheckoutRoute])

    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homebloc,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text("Shopping Page"),
        ),
        body: BlocProvider(
          create: (context) => homebloc,
          child: ListView(scrollDirection: Axis.vertical, children: [
            GestureDetector(
              child: ShoppingCard(),
              onTap: () {
                print('navigating');
                context.router.push(const HomeProductDart());
              },
            ),
            ShoppingCard(),
            ShoppingCard(),
            ShoppingCard(),
            ShoppingCard(),
            ShoppingCard(),
            ShoppingCard(),
            ShoppingCard(),
            ShoppingCard(),
          ]),
        ),
      ),
      listener: (BuildContext context, HomeState state) {
        if (state.isClicked == true) {
          AutoRouter.of(context).push(Cart());
        }
      },
      // listenWhen: (previous, current) => current is HomeActionState,
      // buildWhen: (previous, current) => current is! HomeActionState,
    );
  }
}
