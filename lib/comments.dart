import 'package:flutter/material.dart';

class CommentsList extends StatefulWidget {
  const CommentsList({Key? key}) : super(key: key);

  @override
  State<CommentsList> createState() => _CommentsListState();
}

class _CommentsListState extends State<CommentsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Color(0xffffdca9),
            backgroundImage: AssetImage('images/avatar.png'),
          ),
          title: Row(
            children: [
              const Text(
                '안녕 나 응애 ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 18,
              ),
              Text(
                '1일전',
                style: TextStyle(color: Theme.of(context).disabledColor),
              )
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.favorite_border_rounded),
                    label: const Text('5'),
                  ),
                  TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.mode_comment_outlined),
                    label: const Text('5'),
                  ),
                ],
              )
            ],
          ),
          trailing: Icon(
            Icons.more_horiz_rounded,
            color: Theme.of(context).disabledColor,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48.0),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xffFBB0AE),
              backgroundImage: AssetImage('images/avatar2.png'),
            ),
            title: Row(
              children: [
                const Text(
                  'ㅇㅅㅇ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 18,
                ),
                Text(
                  '1일전',
                  style: TextStyle(color: Theme.of(context).disabledColor),
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다'),
                TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.favorite_border_rounded),
                  label: const Text('5'),
                )
              ],
            ),
            trailing: Icon(
              Icons.more_horiz_rounded,
              color: Theme.of(context).disabledColor,
            ),
          ),
        ),
      ],
    );
  }
}
