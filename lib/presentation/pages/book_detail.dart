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
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/star.svg"),
                        Text("2.5")
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/lang.svg"),
                        Text("English")
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/microphone-2.svg"),
                        Text("2 hours")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
    return Expanded(
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
            child:
                Center(child: SvgPicture.asset("assets/svg/arrow-right.svg")),
          ),
        ),
        Text('Detail'),
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
