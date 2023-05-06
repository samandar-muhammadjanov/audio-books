import 'package:audio_books/utils/extantions/extantions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF1EEE3),
        body: SafeArea(
          child: SizedBox(
            height: Extantions.size(context).height,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                appBar(context),
                sayHello(),
                const SizedBox(
                  height: 30,
                ),
                const Categories(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Drama",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xffE36166)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Books(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Detective",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Color(0xffE36166)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Books()
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          // color: const Color(0xffF1EEE3),
          padding: EdgeInsets.zero,
          color: Colors.transparent,

          elevation: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
            height: 81,
            decoration: BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BottomNavigationBar(
                onTap: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                currentIndex: currentIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color(0xff191815),
                selectedItemColor: const Color(0xffE06065),
                unselectedItemColor: const Color(0xffF1EEE3),
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/home.svg",
                      color: currentIndex == 0
                          ? const Color(0xffE06065)
                          : const Color(0xffF1EEE3),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/search.svg",
                      color: currentIndex == 1
                          ? const Color(0xffE06065)
                          : const Color(0xffF1EEE3),
                    ),
                    label: "Search",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/bookmark.svg",
                      color: currentIndex == 2
                          ? const Color(0xffE06065)
                          : const Color(0xffF1EEE3),
                    ),
                    label: "Bookmark",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      "assets/svg/user.svg",
                      color: currentIndex == 3
                          ? const Color(0xffE06065)
                          : const Color(0xffF1EEE3),
                    ),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Padding appBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/user.png"),
          nextButton(context),
        ],
      ),
    );
  }
}

class Books extends StatelessWidget {
  const Books({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> books = [
      {
        "id": 1,
        "title": "Moby Dick",
        "subtitle": "Herman Meville",
        "image": "assets/images/REPLACE THIS.jpg"
      },
      {
        "id": 2,
        "title": "Authornity",
        "subtitle": "Jeff Vandermer",
        "image": "assets/images/Authority.jpg"
      },
      {
        "id": 3,
        "title": "Moby Dick",
        "subtitle": "Herman Meville",
        "image": "assets/images/REPLACE THIS.jpg"
      },
      {
        "id": 4,
        "title": "Authornity",
        "subtitle": "Jeff Vandermer",
        "image": "assets/images/Authority.jpg"
      },
      {
        "id": 5,
        "title": "Moby Dick",
        "subtitle": "Herman Meville",
        "image": "assets/images/REPLACE THIS.jpg"
      },
      {
        "id": 6,
        "title": "Authornity",
        "subtitle": "Jeff Vandermer",
        "image": "assets/images/Authority.jpg"
      }
    ];
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: books.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = books[index];
          return Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Image.asset(
                        item["image"],
                        height: 232,
                      ),
                      Opacity(
                        opacity: 0.25,
                        child: Image.asset(
                          "assets/images/Lights.png",
                          height: 232,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  item['title'],
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(item['subtitle'])
              ],
            ),
          );
        },
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "All",
      "Detective",
      "Drama",
      "Historical",
      "Tragedy",
      "Fantasy",
      "Novel"
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final item = categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                height: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: currentIndex == index
                        ? const Color(0xff191815)
                        : const Color(0xffE7E0CB)),
                child: Text(
                  item,
                  style: TextStyle(
                      color: currentIndex == index
                          ? const Color(0xffF1EEE3)
                          : const Color(0xff191815)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget nextButton(BuildContext context) {
  return InkWell(
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
      child: Center(child: SvgPicture.asset("assets/svg/bell.svg")),
    ),
  );
}

Widget sayHello() {
  return RichText(
    textAlign: TextAlign.left,
    text: const TextSpan(
      style: TextStyle(
          height: 1.8,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xff272A34),
          fontFamily: 'albra'),
      children: [
        TextSpan(text: 'Hey, '),
        TextSpan(
          text: 'Steve!',
          style: TextStyle(
            color: Color(0xffE36166),
          ),
        ),
        TextSpan(text: " What will you listen today?"),
      ],
    ),
  );
}
