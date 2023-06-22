import 'package:athlete/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:athlete/athlete_state_notifier.dart';
import 'package:provider/provider.dart';

typedef IntValueSetter = void Function(int value);
typedef WordValueSetter = void Function(String value);

class UserDetailForm extends ConsumerWidget {
  const UserDetailForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey, // GlobalKey
      child: Container(
        constraints: const BoxConstraints(minWidth: 200, maxWidth: 400),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FirstNameFormField(
              labelText: 'Name',
              // nameValueSetter: wordValueSetter,
              nameValueSetter: (value) =>
                  ref.read(athleteProvider.notifier).setFirstName(value),
            ),
            const SizedBox(height: 16),
            AgeFormField(
              labelText: "Age",
              ageValueSetter: (value) =>
                  ref.read(athleteProvider.notifier).setAge(value),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class FirstNameFormField extends StatelessWidget {
  const FirstNameFormField({
    super.key,
    required this.labelText,
    required this.nameValueSetter,
  });

  final String labelText;
  final WordValueSetter nameValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      validator: (value) => value!.isEmpty ? 'Name is required' : null,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => nameValueSetter(newValue!),
    );
  }
}

class AgeFormField extends StatelessWidget {
  const AgeFormField({
    super.key,
    required this.labelText,
    required this.ageValueSetter,
  });

  final String labelText;
  final IntValueSetter ageValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Age is required';
        }
        if (int.tryParse(value) == null) {
          return 'Age must be a number between 0 and 120';
        }
        var intValue = int.tryParse(value);
        if (intValue! < 0 || intValue > 120) {
          return 'Age must be between 0 and 120';
        }
        return null;
      },
      keyboardType: const TextInputType.numberWithOptions(
        signed: false,
        decimal: false,
      ),
      onSaved: (newValue) => ageValueSetter(int.tryParse(newValue ?? '')!),
    );
  }
}
