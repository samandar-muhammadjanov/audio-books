import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.book});
  final Map<String, dynamic> book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const BookDetailAppBar(),
              const SizedBox(
                height: 20,
              ),
              Disk(book: book),
              const MoreAboutBook(),
              const SizedBox(
                height: 20,
              ),
              Title(book: book),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.book,
  });

  final Map<String, dynamic> book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          book['title'],
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          book['subtitle'],
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class MoreAboutBook extends StatelessWidget {
  const MoreAboutBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/svg/star.svg"),
            const SizedBox(
              width: 6,
            ),
            const Text("4.5")
          ],
        ),
        const SizedBox(
          width: 18,
        ),
        Row(
          children: [
            SvgPicture.asset("assets/svg/lang.svg"),
            const SizedBox(
              width: 6,
            ),
            const Text("English")
          ],
        ),
        const SizedBox(
          width: 18,
        ),
        Row(
          children: [
            SvgPicture.asset("assets/svg/microphone-2.svg"),
            const SizedBox(
              width: 6,
            ),
            const Text("2 hours")
          ],
        ),
      ],
    );
  }
}

class Disk extends StatelessWidget {
  const Disk({
    super.key,
    required this.book,
  });

  final Map<String, dynamic> book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370,
      child: Stack(
        children: [
          SvgPicture.asset("assets/svg/disk.svg"),
          Positioned(
              top: 75,
              left: 47,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.asset(
                      book['image'],
                      width: 176,
                    ),
                    Opacity(
                      opacity: 0.15,
                      child: Image.asset(
                        "assets/images/Lights.png",
                        width: 176,
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BookDetailAppBar extends StatelessWidget {
  const BookDetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          customBorder: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
          child: Ink(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              color: Color(0xff191815),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child:
                Center(child: SvgPicture.asset("assets/svg/arrow-right.svg")),
          ),
        ),
        const Text('Detail'),
        InkWell(
          customBorder: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          onTap: () {},
          child: Ink(
            height: 48,
            width: 48,
            decoration: const BoxDecoration(
              color: Color(0xff191815),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(child: SvgPicture.asset("assets/svg/burger.svg")),
          ),
        ),
      ],
    );
  }
}
