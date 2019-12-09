import 'package:flutter/material.dart';

void main() {
  runApp(MarvelHero());
}

class MarvelHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Marvel Hero";

    List<Choice> choices = const <Choice>[
      const Choice(
          title: 'The One-Above All',
          description:
              'One-Above All adalah pencipta dari Marvel Universe, dia adalah otoritas paling tinggi di Marvel Universe. Sebagai Tuhan di Marvel Univers, One-Above All adalah mahkluk mahakuasa, mahatahu dan mahahadir.',
          imglink:
              'https://cdn.idntimes.com/content-images/community/2018/05/maxresdefault-1-5ccf1b0e302f4e40513625d276c32f16.jpg'),
      const Choice(
          title: 'Beyonder',
          description:
              'Beyonder adalah mahkluk terkual di Marvel Universe yang hanya bisa ditandingi oleh The One-Above All. Beyonder diceritakan memiliki kekuatan yang tak tertandingi bahkan jika semua karakter yang ada di seluruh Marvel Universe digabungkan. Beyonder bahkan pernah mengalahkan The Living Tribunal.',
          imglink:
              'https://cdn.idntimes.com/content-images/community/2018/05/beyonder-marvel-comics-9cf1d1d1242111ab332976dac6f40830.jpg'),
      const Choice(
          title: 'Living Tribunal',
          description:
              'Mahakuasa dan Mahatahu, Livin Tribunal memiliki kekuatan yang hampir tak terbatas. Living Tribunal dapat menghancurkan planet-planet atau matahari bahkan seluruh alam semesta dengan mudah. The Living Tribunal memanifestasikan dirinya dalam bentuk mahkluk berkepala tiga, masing-masing kepala mewakili sisi yang berbeda dari kepribadiannya: wajah yang sepenuhnya terlihat mewakili keadilan; wajah yang sepenuhnya berkerudung mewakili kebutuhan; dan wajah setengah berkerudung mewakili balas dendam. ',
          imglink:
              'https://cdn.idntimes.com/content-images/community/2018/05/maxresdefault-c6d3a49a14889b000cd81f80354b188a.jpg'),
      const Choice(
          title: 'Eternity',
          description:
              'Eternity muncul ketika alam semesta mulai terbentuk, bersama-sama dengan saudaranya Death, Oblivion dan Infinity. Eternity adalah perwujudan waktu dan memiliki kekuatan kosmik yang hampir mahakuasa. Eternity dapat memanipulasi ruang, waktu, dan realitas sesuai dengan keinginannya.',
          imglink:
              'https://cdn.idntimes.com/content-images/community/2018/05/eternity-multiverse-from-ultimates-vol-2-5-001-4b8eea177b1bde93fbbf1ce46742f313.jpg'),
      const Choice(
          title: 'Franklin Richards',
          description:
              'Salah satu mutan langka tingkat Omega, Franklin Richards, putra dari Reed Richards dan Sue Storm dari Fantastic 4, memiliki kemampuan untuk membelokkan realitas dan mengendalikan kekuatan fundamental alam semesta. Dikatakan bahwa kekuatannya sama dengan kekuatan Celestial, Franklin Richards dapat menciptakan apapun yang bisa ia bayangkan, ia bahkan pernah menciptakan alam semesta ketika kekuatannya keluar tidak terkendali.',
          imglink:
              'https://cdn.idntimes.com/content-images/community/2018/05/franklin-richards2-3b8276c199c62f1feba2572047648d27.jpg'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
