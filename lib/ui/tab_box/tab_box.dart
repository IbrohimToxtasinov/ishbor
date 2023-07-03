import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/cubit/connectivity/connectivity_cubit.dart';
import 'package:ishbor/cubit/tab/tab_cubit.dart';
import 'package:ishbor/ui/tab_box/cart/cart_screen.dart';
import 'package:ishbor/ui/tab_box/category/category_screen.dart';
import 'package:ishbor/ui/tab_box/favorite/favorite_screen.dart';
import 'package:ishbor/ui/tab_box/home/home_screen.dart';
import 'package:ishbor/ui/tab_box/profile/profile_screen.dart';
import 'package:ishbor/utils/app_colors.dart';
import 'package:ishbor/utils/app_text_styles.dart';
import 'package:ishbor/utils/constans.dart';

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
                  bottomNavigationBarItemWidget(icon: "home_icon"),
                  bottomNavigationBarItemWidget(icon: "chat"),
                  bottomNavigationBarItemWidget(icon: "profile_1"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
