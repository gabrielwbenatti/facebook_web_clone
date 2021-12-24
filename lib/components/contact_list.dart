import 'package:facebook_web_aula/components/image_text.dart';
import 'package:facebook_web_aula/models/models.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Contatos',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.video_call),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
              itemBuilder: (context, index) {
                User user = users[index];

                return ImageText(
                  user: user,
                  onTap: () {},
                );
              },
              itemCount: users.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
          ),
        ],
      ),
    );
  }
}
