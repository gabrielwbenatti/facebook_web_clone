import 'package:facebook_web_aula/models/models.dart';

/* Usuário Logado */
User atualUser = User(
  nome: "Jamilton Damasceno",
  urlImage: "https://source.unsplash.com/EQFtEzJGERg/800x600",
);

/* Lista de usuários online */
List<User> onlineUsers = [
  User(
      nome: "José Renato de almeida",
      urlImage: "https://source.unsplash.com/UJLAMjEjISo/800x600"),
  User(
      nome: "Maria Almeida",
      urlImage: "https://source.unsplash.com/0wRXAXqIp58/800x600"),
  User(
      nome: "Fernando Lima de albuquerque filho",
      urlImage: "https://source.unsplash.com/59HOrlAKTOU/800x600"),
  User(
      nome: "Marcela Faria",
      urlImage: "https://source.unsplash.com/GXzHGgzraHc/800x600"),
  User(
      nome: "Carlos Eduardo",
      urlImage: "https://source.unsplash.com/y8yimL21z8s/800x600"),
  User(
      nome: "Joana Santos",
      urlImage: "https://source.unsplash.com/PXWiHU7pbeg/800x600"),
  User(
      nome: "Rodrigo Caio",
      urlImage: "https://source.unsplash.com/MS0RHQ1enek/800x600"),
  User(
      nome: "Pedro do Carmo",
      urlImage: "https://source.unsplash.com/9ChfwZzv4ys/800x600"),
];

/* Lista de estórias */
List<Storie> stories = [
  Storie(
    user: onlineUsers[0],
    urlImage: "https://source.unsplash.com/JMWjOup32Fk/800x600",
    visualized: true,
  ),
  Storie(
    user: onlineUsers[1],
    urlImage: "https://source.unsplash.com/no_TCkPUq_s/800x600",
    visualized: true,
  ),
  Storie(
      user: onlineUsers[2],
      urlImage: "https://source.unsplash.com/6dX5TPPM34M/800x600"),
  Storie(
      user: onlineUsers[3],
      urlImage: "https://source.unsplash.com/PO7CGnoDFUI/800x600"),
  Storie(
      user: onlineUsers[4],
      urlImage: "https://source.unsplash.com/rewyZqUwAqY/800x600"),
  Storie(
      user: onlineUsers[5],
      urlImage: "https://source.unsplash.com/1HpQU1evGK8/800x600",
      visualized: true),
  Storie(
      user: onlineUsers[6],
      urlImage: "https://source.unsplash.com/W9z_628BBpc/800x600"),
  Storie(
      user: onlineUsers[7],
      urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600"),
];

// /* Lista de postagens */
List<Post> posts = [
  Post(
      user: onlineUsers[0],
      description: "Passeio muito legal no final de semana",
      time: "20m",
      urlImage: "https://source.unsplash.com/DOb-2jd0sbc/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[1],
      description: "Quero compartilhar com você algo que aconteceu...",
      time: "40m",
      urlImage: "https://source.unsplash.com/G0H58Z5aPog/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[2],
      description: "Não recomendo esse lugar, não fomos bem atendidos",
      time: "55m",
      urlImage: "https://source.unsplash.com/1a_u4n02YNo/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[3],
      description:
          "Não importa o que você sabe, mas o que faz com o que você sabe!",
      time: "1h",
      urlImage: "https://source.unsplash.com/sfL_QOnmy00/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[4],
      description:
          "Preciso de indicações de eletricista, meu chuveiro pifou :(",
      time: "2h",
      urlImage: "https://source.unsplash.com/_tWMmC9CQXQ/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[5],
      description: "Que chuva maravilhosa!",
      time: "2d",
      urlImage: "https://source.unsplash.com/a4wUKaaMGWQ/800x600",
      likes: 30,
      comments: 3,
      shares: 5),
  Post(
      user: onlineUsers[6],
      description: "Um dia mais que especial, nos divertimos bastante ;)",
      time: "3d",
      urlImage: "https://source.unsplash.com/YS1OOmHAFD0/800x600",
      likes: 100,
      comments: 30,
      shares: 3),
  Post(
      user: onlineUsers[7],
      description: "VOCÊ É DO TAMANHO DOS SEUS SONHOS! Lute, persista, "
          "insista, corra atrás, passe algumas noites sem dormir direito, "
          "mas nunca desista de seus sonhos, acredite que é capaz, se olhe "
          "no espelho e diga pra você: VOCÊ TEM POTENCIAL! "
          "Ninguém além de você mesmo pode torná-lo real.",
      time: "3d",
      urlImage: "https://source.unsplash.com/Ng2Hg1YMMuU/800x600",
      likes: 230,
      comments: 25,
      shares: 3),
];
