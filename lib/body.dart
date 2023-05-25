import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          bodyText1,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(bodyText2),
        const SizedBox(
          height: 16,
        ),
        const Text(bodyText3),
        const SizedBox(
          height: 16,
        ),
        const Text(bodyText4),
        const SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: chipTextsList
              .map((e) => Chip(
                    label: Text(
                      e,
                      style: const TextStyle(color: Color(0xff5A6B87)),
                    ),
                    backgroundColor: const Color(0xfff7f8fa),
                    shape: const StadiumBorder(
                        side: BorderSide(color: Color(0xffCED3DE))),
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 16,
        ),
        const BodyImage()
      ],
    );
  }
}

class BodyImage extends StatefulWidget {
  const BodyImage({Key? key}) : super(key: key);

  @override
  State<BodyImage> createState() => _BodyImageState();
}

class _BodyImageState extends State<BodyImage> {
  bool _liked = false;

  bool _saved = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO add image carousel
        CarouselSlider(
          items: imageUrls
              .map((e) => Image.network(
                    e,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ))
              .toList(),
          options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
                icon: _liked
                    ? const Icon(
                        Icons.favorite_rounded,
                        color: Colors.pink,
                      )
                    : Icon(
                        Icons.favorite_border_rounded,
                        color: Theme.of(context).disabledColor,
                      ),
                label: _liked
                    ? const Text('6')
                    : Text(
                        '5',
                        style:
                            TextStyle(color: Theme.of(context).disabledColor),
                      ),
              ),
              const SizedBox(
                width: 8,
              ),
              TextButton.icon(
                onPressed: null,
                icon: const Icon(Icons.mode_comment_outlined),
                label: const Text('5'),
              ),
              const SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _saved = !_saved;
                  });
                },
                icon: _saved
                    ? const Icon(
                        Icons.bookmark_rounded,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.bookmark_outline_rounded,
                        color: Theme.of(context).disabledColor,
                      ),
                color: Theme.of(context).disabledColor,
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.more_horiz_rounded,
                color: Theme.of(context).disabledColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
