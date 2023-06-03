import 'package:flutter/material.dart';

class AuthConnectView extends StatelessWidget {
  static const routeName = '/auth';
  const AuthConnectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorize'),
      ),
      body: const Center(
        child: Image(
            image:
                AssetImage('images/brands/btn_strava_connectwith_light.png')),
      ),
    );
  }
}
