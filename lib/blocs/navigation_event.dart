import 'package:equatable/equatable.dart';

abstract class NavigationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SelectTab extends NavigationEvent {
  final int index;

  SelectTab(this.index);

  @override
  List<Object> get props => [index];
}
