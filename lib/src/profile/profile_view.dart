import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  static const routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const connectWithStravaImagePath =
        'assets/images/brands/btn_strava_connectwith_light.png';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Image(image: AssetImage(connectWithStravaImagePath)),
      ),
    );
  }
}
