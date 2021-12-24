import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web_aula/components/profile_image.dart';
import 'package:facebook_web_aula/data/dados.dart';
import 'package:facebook_web_aula/models/models.dart';
import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class StorieArea extends StatelessWidget {
  const StorieArea({
    Key? key,
    required this.stories,
    required this.user,
  }) : super(key: key);

  final User user;
  final List<Storie> stories;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
      height: 200,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            Storie userStorie = Storie(
              user: atualUser,
              urlImage: atualUser.urlImage,
              addStorie: true,
            );

            return StorieItem(storie: userStorie);
          } else {
            Storie storie = stories[index - 1];

            return StorieItem(storie: storie);
          }
        },
      ),
    );
  }
}

class StorieItem extends StatelessWidget {
  const StorieItem({
    Key? key,
    required this.storie,
  }) : super(key: key);

  final Storie storie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: storie.urlImage,
              height: double.infinity,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            width: 120,
            decoration: BoxDecoration(
              gradient: ColorPallete.storieGradient,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: storie.addStorie
                  ? const Icon(
                      Icons.add,
                      color: ColorPallete.blueFacebook,
                    )
                  : ProfileImage(
                      imageUrl: storie.user.urlImage,
                      visualized: storie.visualized,
                    ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              storie.addStorie ? 'Adicionar Storie' : storie.user.nome,
              style: const TextStyle(
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}



    // return Padding(
    //   padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
    //   child: Padding(
    //     padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
    //     child: Stack(
    //       children: [
    //         ClipRRect(
    //           borderRadius: BorderRadius.circular(12),
    //           // child: CachedNetworkImage(
    //           //   imageUrl: storie.urlImage,
    //           //   fit: BoxFit.cover,
    //           //   height: double.infinity,
    //           //   width: 120,
    //           // ),
    //           child: Container(
    //             color: Colors.amber,
    //             height: double.infinity,
    //             width: 120,
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(5),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CircleAvatar(
    //                 backgroundImage:
    //                     CachedNetworkImageProvider(storie.user.urlImage),
    //                 radius: 20,
    //               ),
    //               Text(
    //                 storie.user.nome,
    //                 style: const TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.white,
    //                 ),
    //                 maxLines: 2,
    //                 overflow: TextOverflow.ellipsis,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );