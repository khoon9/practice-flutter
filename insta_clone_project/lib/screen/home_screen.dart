import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

class StoryArea extends StatefulWidget {
  const StoryArea({super.key});

  @override
  State<StoryArea> createState() => _StoryAreaState();
}

class _StoryAreaState extends State<StoryArea> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            10, (index) => UserStory(userName: 'User ${index + 1}')),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;

  const UserStory({
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text(userName)
        ],
      ),
    );
  }
}

class FeedDate {
  final String userName;
  final int likeCount;
  final String content;

  FeedDate(
      {required this.userName, required this.likeCount, required this.content});
}

final feedDataList = [
  FeedDate(userName: 'User 1', likeCount: 20, content: '내용 1'),
  FeedDate(userName: 'User 2', likeCount: 40, content: '내용 2'),
  FeedDate(userName: 'User 3', likeCount: 52, content: '내용 3'),
  FeedDate(userName: 'User 4', likeCount: 21, content: '내용 4'),
  FeedDate(userName: 'User 5', likeCount: 34, content: '내용 5'),
  FeedDate(userName: 'User 6', likeCount: 73, content: '내용 6'),
  FeedDate(userName: 'User 7', likeCount: 13, content: '내용 7'),
  FeedDate(userName: 'User 8', likeCount: 23, content: '내용 8'),
  FeedDate(userName: 'User 9', likeCount: 16, content: '내용 9'),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    // 리스트 안에 리스트가 들어가면 문제 발생가능
    // ListView 사용
    return ListView.builder(
        // 스크롤 두 개가 존재하기에 오류 발생 -> shrinkWrap 설정으로 해결
        shrinkWrap: true,
        // shrinkWrap 설정으로 인한 스크롤 제한 발생 -> NeverScrollableScrollPhysics 으로 해결
        physics: const NeverScrollableScrollPhysics(),
        itemCount: feedDataList.length,
        itemBuilder: (context, index) =>
            FeedItem(feedData: feedDataList[index]));
  }
}

class FeedItem extends StatelessWidget {
  final FeedDate feedData;

  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(feedData.userName),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        const SizedBox(height: 8,),
        Container(
          width: double.infinity,
          height: 280,
          color: Colors.indigo.shade300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bookmark))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('좋아요 ${feedData.likeCount}개', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(text: TextSpan(
            children: [
              TextSpan(text: feedData.userName, style: TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: ' '),
              TextSpan(text: feedData.content),
            ],
            style: const TextStyle(color: Colors.black)
          )),
        ),
        const SizedBox(height: 8,),
      ],
    );
  }
}
