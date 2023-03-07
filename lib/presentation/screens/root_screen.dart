import 'package:trademebus/logic/navigation/constants/nav_bar_items.dart';
import 'package:trademebus/logic/navigation/navigation_cubit.dart';
import 'package:trademebus/presentation/screens/home_screen.dart';
import 'package:trademebus/presentation/screens/profile_screen.dart';
import 'package:trademebus/presentation/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            showUnselectedLabels: false,backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,color: Colors.black,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart_outlined,color: Colors.black,
                ),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,color: Colors.black,
                ),
                label: 'Account',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,color: Colors.black,
                ),
                label: 'Profile',
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.settings);
              } else if (index == 2) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.profile);
              }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            if (state.navbarItem == NavbarItem.home) {
              return HomeScreen();
            } else if (state.navbarItem == NavbarItem.settings) {
              return SettingsScreen();
            } else if (state.navbarItem == NavbarItem.profile) {
              return ProfileScreen();
            }
            return Container();
          }),
    );
  }
}