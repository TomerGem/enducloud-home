import 'package:athlete/main.dart';
import 'package:flutter/material.dart';
import 'package:athlete/athlete_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

class AthleteDetailPage extends ConsumerWidget {
  const AthleteDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final athlete = ref.watch(athleteProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Athlete Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: ${athlete.firstName}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Age: ${athlete.age.toString()}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Message: ${athlete.message}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Back'),
          onPressed: () {
            ref.read(athleteProvider.notifier).generateWelcome();
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
