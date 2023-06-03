import 'package:flutter/material.dart';
import 'package:myofibril_flutter/src/profile/profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.restorablePushNamed(context, ProfileView.routeName);
              })
        ],
      ),
      body: const Center(),
    );
  }
}
