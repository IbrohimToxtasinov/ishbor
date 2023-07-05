import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ishbor/cubit/connectivity/connectivity_cubit.dart';
import 'package:ishbor/cubit/tab/tab_cubit.dart';
import 'package:ishbor/ui/tab_box/gpt/gpt_screen.dart';
import 'package:ishbor/ui/tab_box/home/home_screen.dart';
import 'package:ishbor/ui/tab_box/m/m_screen.dart';
import 'package:ishbor/ui/tab_box/profile/profile_screen.dart';
import 'package:ishbor/utils/constans.dart';

import 'chat/chat_screen.dart';
import 'widgets/bottom_navigation_bar_item.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      HomeScreen(),
      GptScreen(),
      MScreen(),
      CategoryScreen(),
      ProfileScreen(),
    ];
    super.initState();
  }

  _init() async {
    debugPrint("INTERNET TURNED ON CALL ANY API");
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectivityState>(
      listener: (context, state) {
        if (state.connectivityResult == ConnectivityResult.none) {
          Navigator.pushNamed(context, noInternetRoute, arguments: _init);
        }
      },
      child: BlocProvider(
        create: (context) => TabCubit(),
        child: BlocBuilder<TabCubit, TabsState>(
          builder: (context, state) {
            var index = context.watch<TabCubit>().state.currentPage;
            return Scaffold(
              body: IndexedStack(index: index, children: screens),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: index,
                selectedItemColor: Colors.yellow,
                unselectedItemColor: Colors.red,
                onTap: (value) {
                  context.read<TabCubit>().changeTabState(value);
                },
                items: [
                  bottomNavigationBarItemWidget(icon: "home_icon", isSvg: true),
                  bottomNavigationBarItemWidget(icon: "gptPng", isSvg: false),
                  bottomNavigationBarItemWidget(icon: "marketP", isSvg: false),
                  bottomNavigationBarItemWidget(icon: "chat", isSvg: true),
                  bottomNavigationBarItemWidget(icon: "profile_1", isSvg: true),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
