import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1EEE3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
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
              Container(
                margin: EdgeInsets.all(30),
                child: BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset("assets/svg/home.svg"),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset("assets/svg/search.svg"),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset("assets/svg/bookmark.svg"),
                      label: "Bookmark",
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset("assets/svg/user.svg"),
                      label: "Profile",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xff191815),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/svg/home.svg"),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/svg/search.svg"),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/svg/bookmark.svg"),
      //       label: "Bookmark",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset("assets/svg/user.svg"),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
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
      }
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: books.length,
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
                  child: Image.asset(
                    item["image"],
                    height: 232,
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
