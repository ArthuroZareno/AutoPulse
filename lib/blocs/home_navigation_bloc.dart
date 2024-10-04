import 'package:flutter_bloc/flutter_bloc.dart';

// Define Events
abstract class HomeNavigationEvent {}

class SelectTab extends HomeNavigationEvent {
  final int tabIndex;
  SelectTab(this.tabIndex);
}

// Define States
abstract class HomeNavigationState {
  final int selectedIndex;
  HomeNavigationState(this.selectedIndex);
}

class HomeNavigationInitial extends HomeNavigationState {
  HomeNavigationInitial() : super(0);
}

class HomeTabChanged extends HomeNavigationState {
  HomeTabChanged(super.selectedIndex);
}

// Define BLoC
class HomeNavigationBloc extends Bloc<HomeNavigationEvent, HomeNavigationState> {
  HomeNavigationBloc() : super(HomeNavigationInitial());

  Stream<HomeNavigationState> mapEventToState(HomeNavigationEvent event) async* {
    if (event is SelectTab) {
      yield HomeTabChanged(event.tabIndex);
    }
  }
}
