import 'package:facebook_web_aula/models/models.dart';

class Storie {
  User user;
  String urlImage;
  bool visualized;
  bool addStorie;

  Storie({
    required this.urlImage,
    required this.user,
    this.visualized = false,
    this.addStorie = false,
  });
}
