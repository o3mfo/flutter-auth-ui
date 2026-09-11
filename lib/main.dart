import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBottomIndex = 4;

  final List<Map<String, String>> stories = [
    {
      "name": "عماار",
      "image": "https://tse2.mm.bing.net/th/id/OIP.vSnmAfTrBdrflPLhoh_9vgHaE8?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name":  "عمر القحطاني",
      "image": "https://pbs.twimg.com/profile_images/1973128518465699840/ZyHY3P2x.jpg",
    },
    {
      "name": "عمر",
      "image": "https://tse3.mm.bing.net/th/id/OIP.kIsgA7408DKeJn8AqoIJ4AHaE7?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "Omar",
      "image": "https://tse2.mm.bing.net/th/id/OIP.Fe8kid-XTMkztgRCFsPVwQAAAA?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
        {
      "name": "Faris",
      "image": "https://share.google/images/9XGVCj4xpqbOxMWwV",
    },
        {
      "name": "Ali",
      "image": "https://share.google/images/focLLTg2VGBcgGUug",
    },
        {
      "name": "Hamad",
      "image": "https://share.google/images/ZY2Ztopl3Y2KgkXty",
    },
        {
      "name": "Sami",
      "image": "https://share.google/images/OCzs3YHj9AXwBl2Zg",
    },
        {
      "name": "ناصر",
      "image": "https://share.google/images/s25txmED9iTeZe7oC",
    },
  ];

  final List<String> discoverImages = [
    "https://share.google/images/s25txmED9iTeZe7oC",
    "https://share.google/images/9XGVCj4xpqbOxMWwV",
    "https://share.google/images/ZY2Ztopl3Y2KgkXty",
    "https://share.google/images/9XGVCj4xpqbOxMWwV",
  ];

  void openStory(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryPage(
          stories: stories,
          startIndex: index,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xff101010),

        body: SafeArea(
          child: Column(
            children: [
              // =========================
              // الأعلى
              // =========================
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    // شعار / صورة
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xffFFD900),
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(width: 12),

                    // بحث
                    _topCircleButton(
                      icon: Icons.search,
                      onTap: () {},
                    ),

                    const Spacer(),

                    const Text(
                      "القصص",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Spacer(),

                    _topCircleButton(
                      icon: Icons.notifications_none,
                      onTap: () {},
                    ),

                    const SizedBox(width: 8),

                    _topCircleButton(
                      icon: Icons.person_add_alt,
                      onTap: () {},
                    ),

                    const SizedBox(width: 8),

                    _topCircleButton(
                      icon: Icons.more_horiz,
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              // =========================
              // المحتوى القابل للتمرير
              // =========================
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // عنوان الأصدقاء
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 10,
                        ),
                        child: Text(
                          "الأصدقاء ‹",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // =========================
                      // Stories
                      // =========================
                      SizedBox(
                        height: 165,
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: stories.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 15);
                          },
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                openStory(index);
                              },
                              child: SizedBox(
                                width: 100,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 94,
                                      height: 94,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: const Color(0xffB800FF),
                                          width: 4,
                                        ),
                                      ),
                                      child: ClipOval(
                                        child: Image.network(
                                          stories[index]["image"]!,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Container(
                                              color: Colors.grey.shade800,
                                              child: const Icon(
                                                Icons.person,
                                                size: 45,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 8),

                                    Text(
                                      stories[index]["name"]!,
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // =========================
                      // اكتشف
                      // =========================
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 8,
                        ),
                        child: Text(
                          "اكتشف ‹",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // =========================
                      // Grid
                      // =========================
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics:
                              const NeverScrollableScrollPhysics(),
                          itemCount: discoverImages.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: 0.70,
                          ),
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    discoverImages[index],
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey.shade900,
                                      );
                                    },
                                  ),

                                  // تدرج أسفل الصورة
                                  const DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black87,
                                        ],
                                      ),
                                    ),
                                  ),

                                  const Positioned(
                                    top: 12,
                                    right: 12,
                                    child: Icon(
                                      Icons.play_arrow_outlined,
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 12,
                                    right: 10,
                                    left: 10,
                                    child: Text(
                                      index % 2 == 0
                                          ? "محتوى جديد 🔥"
                                          : "شاهد القصة الآن",
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // =========================
        // Bottom Navigation
        // =========================
        bottomNavigationBar: Container(
          height: 75,
          decoration: const BoxDecoration(
            color: Color(0xff1C1C1C),
            border: Border(
              top: BorderSide(
                color: Colors.white12,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _bottomButton(
                icon: Icons.location_on_outlined,
                index: 0,
              ),
              _bottomButton(
                icon: Icons.chat_bubble_outline,
                index: 1,
              ),
              _bottomButton(
                icon: Icons.camera_alt_outlined,
                index: 2,
              ),
              _bottomButton(
                icon: Icons.people,
                index: 3,
              ),
              _bottomButton(
                icon: Icons.play_arrow_outlined,
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topCircleButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff292929),
        ),
        child: Icon(
          icon,
          size: 27,
        ),
      ),
    );
  }

  Widget _bottomButton({
    required IconData icon,
    required int index,
  }) {
    bool selected = currentBottomIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentBottomIndex = index;
        });
      },
      child: SizedBox(
        width: 55,
        height: 60,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              icon,
              size: 32,
              color: selected
                  ? const Color(0xffFF1744)
                  : Colors.white,
            ),

            if (selected)
              const Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffFF1744),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// صفحة عرض الـ Story
// ======================================================

class StoryPage extends StatefulWidget {
  final List<Map<String, String>> stories;
  final int startIndex;

  const StoryPage({
    super.key,
    required this.stories,
    required this.startIndex,
  });

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late PageController pageController;
  late int currentStory;

  @override
  void initState() {
    super.initState();

    currentStory = widget.startIndex;

    pageController = PageController(
      initialPage: widget.startIndex,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.black,

        body: SafeArea(
          child: Stack(
            children: [
              PageView.builder(
                controller: pageController,
                itemCount: widget.stories.length,

                onPageChanged: (index) {
                  setState(() {
                    currentStory = index;
                  });
                },

                itemBuilder: (context, index) {
                  return Image.network(
                    widget.stories[index]["image"]!,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  );
                },
              ),

              // الخطوط فوق مثل Story
              Positioned(
                top: 8,
                left: 10,
                right: 10,
                child: Row(
                  children: List.generate(
                    widget.stories.length,
                    (index) {
                      return Expanded(
                        child: Container(
                          height: 3,
                          margin:
                              const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color: index <= currentStory
                                ? Colors.white
                                : Colors.white30,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // اسم الشخص
              Positioned(
                top: 25,
                right: 15,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        widget.stories[currentStory]["image"]!,
                      ),
                    ),

                    const SizedBox(width: 10),

                    Text(
                      widget.stories[currentStory]["name"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              // إغلاق
              Positioned(
                top: 26,
                left: 15,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}