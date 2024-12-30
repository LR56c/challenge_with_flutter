import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.router.push(const SignInRoute());
                },
                child: Text('Signin')),
            TextButton(
                onPressed: () {
                  context.router.push(const PaymentRoute());
                },
                child: Text('Payment')),
            TextButton(
                onPressed: () {
                  context.router.push(const PaymentRoute());
                },
                child: Text('SMS'))
          ],
        ));
  }
}
