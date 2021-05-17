import 'package:flutter/material.dart';
import 'package:flutter_lab2/data/tweets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TweetWidget extends StatelessWidget {
  final Tweet tweet;

  TweetWidget({this.tweet});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(this.tweet.avatar),
            ),
          ),
          tweetBody(),
        ],
      ),
    );
  }

  Widget tweetIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.black45,
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  child: Text(
                    this.tweet.username,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '@${this.tweet.name} · ${this.tweet.timeAgo}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.angleDown,
                          size: 14.0,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              this.tweet.text,
              overflow: TextOverflow.clip,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tweetIconButton(
                      FontAwesomeIcons.comment, this.tweet.comments),
                  tweetIconButton(
                      FontAwesomeIcons.retweet, this.tweet.retweets),
                  tweetIconButton(FontAwesomeIcons.heart, this.tweet.favorites),
                  tweetIconButton(FontAwesomeIcons.share, ''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
