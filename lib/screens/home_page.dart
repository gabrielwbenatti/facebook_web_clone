import 'package:facebook_web_aula/components/circle_button.dart';
import 'package:facebook_web_aula/components/post_area.dart';
import 'package:facebook_web_aula/components/post_card.dart';
import 'package:facebook_web_aula/components/storie_area.dart';
import 'package:facebook_web_aula/data/dados.dart';
import 'package:facebook_web_aula/models/models.dart';
import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:facebook_web_aula/utils/responsivo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsivo.isDesktop(context);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Responsivo(
        mobile: HomeMobile(),
        desktop: HomeDesktop(),
      ),
    );
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Container(), flex: 1),
        Flexible(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  sliver: SliverToBoxAdapter(
                    child: StorieArea(
                      user: atualUser,
                      stories: stories,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: PostArea(
                    user: atualUser,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      Post post = posts[index];

                      return PostCard(post: post);
                    },
                    childCount: posts.length,
                  ),
                ),
              ],
            ),
            flex: 2),
        Flexible(child: Container(), flex: 1)
      ],
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          backgroundColor: Colors.white,
          title: const Text(
            'facebook mobile',
            style: TextStyle(
              color: ColorPallete.blueFacebook,
              fontWeight: FontWeight.bold,
              fontSize: 28,
              letterSpacing: -1.2,
            ),
          ),
          actions: [
            CircleButton(icon: Icons.search, onPressed: () {}),
            CircleButton(icon: Icons.message, onPressed: () {}),
          ],
        ),
        SliverToBoxAdapter(
          child: PostArea(
            user: atualUser,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: StorieArea(
              user: atualUser,
              stories: stories,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              Post post = posts[index];

              return PostCard(post: post);
            },
            childCount: posts.length,
          ),
        ),
      ],
    );
  }
}
