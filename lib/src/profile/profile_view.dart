import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  static const routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const connectWithStravaImagePath =
        'assets/images/brands/btn_strava_connectwith_orange.png';
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Center(
            child: GestureDetector(
                child: Container(
                    width: 200,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage(connectWithStravaImagePath),
                            fit: BoxFit.cover))),
                onTap: () {})));
  }
}
