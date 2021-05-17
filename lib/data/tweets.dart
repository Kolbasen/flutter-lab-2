import 'package:flutter/material.dart';

class Tweet {
  final String avatar;
  final String username;
  final String name;
  final String timeAgo;
  final String text;
  final String comments;
  final String retweets;
  final String favorites;

  const Tweet(
      {Key key,
      @required this.avatar,
      @required this.username,
      @required this.name,
      @required this.timeAgo,
      @required this.text,
      @required this.comments,
      @required this.retweets,
      @required this.favorites});
}

var tweets = [
  Tweet(
    avatar:
        'https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg',
    username: 'Flutter',
    name: 'FlutterDev',
    timeAgo: '5m',
    text:
        'Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno Takoy sebe esli chestno',
    comments: '243',
    retweets: '23K',
    favorites: '112K',
  ),
  Tweet(
    avatar:
        'https://i.kym-cdn.com/entries/icons/facebook/000/031/051/cover4.jpg',
    username: 'Espana',
    name: 'EsFlutter',
    timeAgo: '12m',
    text:
        'Anekdot is Espanii Anekdot is Espanii Anekdot is Espanii Anekdot is Espanii Anekdot is Espanii Anekdot is Espanii Anekdot is Espanii Anekdot is Espanii',
    comments: '46',
    retweets: '4K',
    favorites: '17K',
  ),
  Tweet(
    avatar: 'https://i.ytimg.com/vi/14YevVqzDb0/maxresdefault.jpg',
    username: 'puckich',
    name: 'PUKICH',
    timeAgo: '20m',
    text:
        'PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET PODKRUTKI.NET',
    comments: '305',
    retweets: '20K',
    favorites: '1M',
  ),
  Tweet(
    avatar: 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Zxcursed.gif',
    username: 'ячсursed',
    name: 'zxcursed',
    timeAgo: '21m',
    text:
        'GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1 GO ZXC 1X1',
    comments: '1K',
    retweets: '70K',
    favorites: '2M',
  ),
  Tweet(
    avatar:
        'https://www.meme-arsenal.com/memes/b6e23b9793806cb7297ac18f3fe41844.jpg',
    username: 'PapichShiz',
    name: 'Papislavsky',
    timeAgo: '26m',
    text: 'ЛЕГЧАЙШАЯ! ДЛЯ КОГО? ДЛЯ ВЕЛИЧАЙШЕГО!',
    comments: '10K',
    retweets: '500K',
    favorites: '22M',
  ),
];
