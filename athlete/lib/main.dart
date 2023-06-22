import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:athlete/athlete_state_notifier.dart';
import 'package:athlete/user_detail_page.dart';

void main() {
  runApp(const AppWidget());
}

final athleteProvider =
    StateNotifierProvider<AthleteStateNotifier, AthleteState>(
        (ref) => AthleteStateNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key})
      : super(key: key); // GlobalKey<FormState> formKey;

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'EnduCloud Athlete',
        home: UserDetailPage(),
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Colors.blue,
            secondary: Colors.blueAccent,
          ),
        ),
        darkTheme: ThemeData.dark(),
      ),
    );
  } // build
}
