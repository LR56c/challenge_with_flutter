import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/profile_card/widgets/profile_card.dart';
import 'package:flutter/material.dart';

import 'model/social.dart';

@RoutePage()
class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const nick = 'flutterando';
    final List<Social> socials = [
      Social(name: 'Facebook', nick: nick, icon: 'ic.facebook'),
      Social(name: 'Linkedin', nick: nick, icon: 'mdi.linkedin'),
      Social(name: 'Twitter', nick: nick, icon: 'pajamas.twitter'),
      Social(name: 'Instagram', nick: nick, icon: 'ri.instagram'),
      Social(name: 'Dribble', nick: nick, icon: 'ion.dribbble'),
    ];
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: ProfileCard(
              name: 'Flutterando',
              imageUrl: 'https://avatars.githubusercontent.com/u/66470318?v=4',
              description: 'Comunidade de desenvolvedores Flutter',
              socialName: nick,
              social: socials,
            ),
          )
      ),
    );
  }
}
