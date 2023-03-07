import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'constants/nav_bar_items.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.settings:
        emit(NavigationState(NavbarItem.settings, 1));
        break;
      case NavbarItem.Account:
        emit(NavigationState(NavbarItem.Account, 2));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 3));
        break;
      case NavbarItem.BabyScreen:
        emit(NavigationState(NavbarItem.BabyScreen, 4));
        break;
      case NavbarItem.AddFunds:
        emit(NavigationState(NavbarItem.AddFunds, 5));
        break;
      case NavbarItem.SellPortfolio:
        emit(NavigationState(NavbarItem.SellPortfolio, 6));
        break;
    }
  }
}