import 'package:facebook_web_aula/models/models.dart';

class Post {
  User user;
  String description;
  String time;
  String urlImage;
  int likes;
  int comments;
  int shares;

  Post({
    required this.user,
    this.comments = 0,
    required this.description,
    this.likes = 0,
    this.shares = 0,
    required this.time,
    required this.urlImage,
  });
}
