import 'package:autopulse3/screens/chat/message_screen.dart';
import 'package:autopulse3/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/navigation_bloc.dart';
import '../../blocs/navigation_event.dart';
import '../../blocs/navigation_state.dart';
import 'widgets/home_content.dart';  // Import the separate home content

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: HomeScreenContent(),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  static final List<Widget> _screens = <Widget>[
    HomeContent(),   // Home content
    ChatPage(), // Message screen
    ProfileScreen(), // Profile screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return _screens[state.selectedIndex]; // Display the current screen
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.selectedIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            onTap: (index) {
              context.read<NavigationBloc>().add(SelectTab(index)); // Dispatch the event
            },
          );
        },
      ),
    );
  }
}
