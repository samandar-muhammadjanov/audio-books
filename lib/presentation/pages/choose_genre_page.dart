import 'package:audio_books/presentation/pages/home_page.dart';
import 'package:audio_books/utils/extantions/extantions.dart';
import 'package:flutter/material.dart';

class ChooseGenrePage extends StatelessWidget {
  const ChooseGenrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191815),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            chooseGenreText(),
            const Spacer(),
            genresImage(context),
            const Spacer(),
            nextButton(context),
            const SizedBox(
              height: 22,
            )
          ],
        ),
      ),
    );
  }

  Padding nextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        customBorder: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false);
        },
        child: Ink(
          height: 64,
          decoration: const BoxDecoration(
            color: Color(0xffE06065),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: const Center(
            child: Text(
              "Next",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Image genresImage(BuildContext context) {
    return Image.asset(
      "assets/images/Categories.png",
      width: Extantions.size(context).width,
      fit: BoxFit.cover,
    );
  }

  RichText chooseGenreText() {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(
            height: 2, fontSize: 30, color: Colors.white, fontFamily: 'albra'),
        children: [
          TextSpan(text: 'Choose Your Favourite '),
          TextSpan(
            text: 'Genre',
            style: TextStyle(
              color: Color(0xffE36166),
            ),
          )
        ],
      ),
    );
  }
}
