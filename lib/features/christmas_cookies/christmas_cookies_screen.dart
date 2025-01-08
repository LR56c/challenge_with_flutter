import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/christmas_cookies/provider/christmas_cookies.dart';
import 'package:challenge_with_flutter/features/christmas_cookies/widgets/christmas_cookie_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ChristmasCookiesScreen extends ConsumerWidget {
  const ChristmasCookiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cookies = ref.watch(christmasCookiesProvider);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Christmas Cookies'),
        ),
          body: Column(
            children: [
              cookies.when(
                data: (data) {
                  return Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 16.0,
                        bottom: 24.0,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return ChristmasCookieCard(
                          cookie: data[index],
                        );
                      }, separatorBuilder: (BuildContext context, int index) => const Gap(24.0),
                    ),
                  );
                },
                error: (error, stackTrace) {
                  return Center(
                    child: Text('Error: $error'),
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )
            ],
          )),
    );
  }
}
