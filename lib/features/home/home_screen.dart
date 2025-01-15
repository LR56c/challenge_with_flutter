import 'dart:async';


import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/christmas_cookies/christmas_cookies_screen.dart';
import 'package:challenge_with_flutter/router.gr.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


import '../../main.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();
    unawaited(() async {
      final settings = await _firebaseMessaging.requestPermission();

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        String? token = await _firebaseMessaging.getToken();
        if (token != null) {
          print('Token del dispositivo: $token');
        }
      } else {
        print('Permisos denegados para notificaciones');
      }
    }());

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Message data: ${message.data}');
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
      showFlutterNotification(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Message clicked! ${message.messageId}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  context.router.push(const SignInRoute());
                },
                child: const Text('Signin')),
            TextButton(
                onPressed: () {
                  context.router.push(const PaymentRoute());
                },
                child: const Text('Payment')),
            TextButton(
                onPressed: () {
                  context.router.push(const MapRoute());
                },
                child: const Text('Map')),
            TextButton(
                onPressed: () {
                  context.router.push(const PaymentRoute());
                },
                child: const Text('SMS')),
            TextButton(
                onPressed: () {
                  context.router.push(const TodoRoute());
                },
                child: const Text('Todo')),
            TextButton(
                onPressed: () {
                  context.router.push(const CounterRoute());
                },
                child: const Text('Counter')),
            TextButton(
                onPressed: () {
                  context.router.push(const MentalSessionRoute());
                },
                child: const Text('Mental Session')),
            TextButton(
                onPressed: () {
                  context.router.push(const ChristmasCookiesRoute());
                },
                child: const Text('Christmas Cookies')),
            TextButton(
                onPressed: () {
                  context.router.push(const ProfileCardRoute());
                },
                child: const Text('Profile Card')),
            TextButton(
                onPressed: () {
                  context.router.push(const AddToBagRoute());
                },
                child: const Text('Add To Bag')),
            TextButton(
                onPressed: () {
                  context.router.push(const RecipeRoute());
                },
                child: const Text('Recipe')),
            TextButton(
                onPressed: () {
                  context.router.push(const MusicEventsRoute());
                },
                child: const Text('Music Events')),
            TextButton(
                onPressed: () {
                  context.router.push(const TripRoute());
                },
                child: const Text('Trip')),
            TextButton(
                onPressed: () {
                  context.router.push(const ImageCarouselRoute());
                },
                child: const Text('Image Carousel'))
          ],
        ));
  }
}
