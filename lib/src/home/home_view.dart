import 'package:flutter/material.dart';
import 'package:myofibril_flutter/src/auth/auth_connect_view.dart';

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
                Navigator.restorablePushNamed(
                    context, AuthConnectView.routeName);
              })
        ],
      ),
      body: const Center(
        child: Image(
            image:
                AssetImage('images/brands/btn_strava_connectwith_light.png')),
      ),
    );
  }
}
