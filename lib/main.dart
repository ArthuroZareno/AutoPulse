import 'package:autopulse3/widgets/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/navigation_bloc.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AutoPulse',
      home: BlocProvider(
        create: (context) => NavigationBloc(),
        child: SplashScreen(), // Your Home Screen
      ),
    );
  }
}
