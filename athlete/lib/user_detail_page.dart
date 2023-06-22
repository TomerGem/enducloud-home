import 'package:athlete/user_detail_form.dart';
import 'package:flutter/material.dart';
import 'package:athlete/athlete_detail_page.dart';

class UserDetailPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  UserDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: UserDetailForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          // validate the form
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const AthleteDetailPage()),
            );
          }
        },
      ),
    );
  }
}
