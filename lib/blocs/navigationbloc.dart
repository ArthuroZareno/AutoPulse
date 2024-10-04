import 'package:flutter_bloc/flutter_bloc.dart';

// Event for NavigationBloc
abstract class NavigationEvent {}

class SelectTab extends NavigationEvent {
  final int index;

  SelectTab(this.index);
}

// State for NavigationBloc
class NavigationState {
  final int selectedIndex;

  NavigationState({required this.selectedIndex});
}

// Bloc for Navigation
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState(selectedIndex: 0));

  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is SelectTab) {
      yield NavigationState(selectedIndex: event.index);
    }
  }
}
