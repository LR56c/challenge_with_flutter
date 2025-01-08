import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MentalSessionScreen extends ConsumerWidget {
  const MentalSessionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter(
      routes: const [
        PracticeRoute(),
        JournalRoute(),
        NotesRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: child,
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.black12,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white24,
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                onTap: (value) {
                  if (value == 0) tabsRouter.setActiveIndex(value);
                },
                items: const [
                  BottomNavigationBarItem(
                      label: 'Practice', icon: Icon(Icons.sports_kabaddi)),
                  BottomNavigationBarItem(
                      label: 'Journal', icon: Icon(Icons.book)),
                  BottomNavigationBarItem(label: 'Notes', icon: Icon(Icons.note)),
                  BottomNavigationBarItem(
                      label: 'Profile', icon: Icon(Icons.person)),
                ]),
          ),
        );
      },
    );
  }
}
