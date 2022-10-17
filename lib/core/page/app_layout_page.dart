import 'package:fashion_style/core/bloc/auth_cubit/auth_cubit.dart';
import 'package:fashion_style/user/menu/drawer_page/drawer_page.dart';
import 'package:flutter/material.dart';
import 'package:fashion_style/core/layout/app_bar_page/app_bar_page.dart';
import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:fashion_style/core/layout/salomon_bottom_bar/salomon_bottom_bar_item.dart';
import 'package:fashion_style/core/theme/colors/colors_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLayoutPage extends StatelessWidget {

  const AppLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          AuthCubit blocLayout = AuthCubit.get(context);
          return Scaffold(
            drawer: buildDrawer,
            // appBar:  blocLayout.currentIndex == 2 ? null : appBarPage,
            // body: blocLayout.screens[blocLayout.currentIndex],
            body: NestedScrollView(
              floatHeaderSlivers: true,
              physics: const NeverScrollableScrollPhysics(),
              body: blocLayout.screens[blocLayout.currentIndex],
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
                blocLayout.currentIndex == 2 || blocLayout.currentIndex == 3 ? const SliverToBoxAdapter() : const AppBarPage(),
              ],
            ),
            bottomNavigationBar: SalomonBottomBar(
              selectedColorOpacity: 0.0,
              currentIndex: blocLayout.currentIndex,
              selectedItemColor: ColorsTheme.green,
              unselectedItemColor: ColorsTheme.iconUnselect,
              onTap: (index) {
                blocLayout.changeIndex(index);
              },
              items:  [
                SalomonBottomBarItem(
                  icon: const Icon(Icons.home), title: const Text('home')),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.people_alt_outlined), title: const Text('sales')),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.video_library_outlined), title: const Text('reels')),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.person_outline_outlined),title: const Text('profile')),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget? get  buildDrawer => const DrawerPage();
  PreferredSizeWidget get appBarPage =>  AppBar();

}


