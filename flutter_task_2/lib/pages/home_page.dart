import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

const Color iconsColor = Colors.white;
const TextStyle largeLableStyle = TextStyle(color: Colors.black, fontSize: 30);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  bool _isSelected = false;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.sort,
        ),
        title: const Text("GDSC BOOKSTORE",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: 55,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 230,
                          height: 40,
                          child: TextField(
                            controller: _controller,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Looking for...",
                              hintStyle: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text('${_controller.text} is not found')));
                          },
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 33,
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 5, 89, 158),
                    Color.fromARGB(255, 5, 83, 151),
                    Color.fromARGB(255, 142, 210, 241),
                    Colors.blue,
                    Color.fromARGB(255, 10, 126, 221),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Spacer(),
                          Text(
                            "Sep 23, 2023",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.pause,
                            color: iconsColor,
                          ),
                          const SizedBox(width: 29),
                          Text(
                            "Today a reader",
                            style: TextStyle(
                                color: Colors.grey[300], fontSize: 20),
                          ),
                          const SizedBox(width: 29),
                          const Icon(
                            Icons.pause,
                            color: iconsColor,
                          ),
                        ],
                      ),
                      Text(
                        "tomorrow a",
                        style: TextStyle(color: Colors.grey[300], fontSize: 20),
                      ),
                      const Text(
                        "LEADER",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.g_translate_sharp,
                            color: iconsColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.bookmark, color: iconsColor)
                        ],
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Catagories",
              style: largeLableStyle,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 6,
              children: [
                chipBuilder(
                  icon: Icons.monitor_heart,
                  chipTitle: "Health",
                ),
                chipBuilder(
                  icon: Icons.biotech,
                  chipTitle: "Science",
                ),
                chipBuilder(
                  icon: Icons.menu_book_sharp,
                  chipTitle: "History",
                ),
                chipBuilder(
                  icon: Icons.settings_outlined,
                  chipTitle: "Technology",
                ),
                chipBuilder(
                  icon: Icons.wordpress,
                  chipTitle: "Philosopy",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text("Recomendation", style: largeLableStyle),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardBuilder(
                        imagePath: 'images/papio.png',
                        bookDesc: 'Papillion Based On true story'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/bedel.png',
                        bookDesc: 'Yebedel kassa Novel'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/goal.jpg',
                        bookDesc: 'Yesatinael Goal Be Ethiopia'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/mahilet.png',
                        bookDesc: 'Mahilet by Adam Retta'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Text("New", style: largeLableStyle),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(
              width: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardBuilder(
                        imagePath: 'images/rich_dad.png',
                        bookDesc: 'Rich Dad Poor Dad Ro. T'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/piassa.png',
                        bookDesc: 'Piyasa muhamud Ga Tebking'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/kulf.png',
                        bookDesc: 'Yetekolefebet Kulf'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Text("Treding", style: largeLableStyle),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(
              width: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardBuilder(
                        imagePath: 'images/trevor.png',
                        bookDesc: 'Born a crime by Trevor Noha'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/evolution.png',
                        bookDesc: 'Evolution of the Learning brain'),
                    SizedBox(width: 10),
                    CardBuilder(
                        imagePath: 'images/lelasew.png',
                        bookDesc: 'Lela sew by Mhiret Debe'),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _index,
          onTap: (int value) {
            setState(() {
              _index = value;
            });
          },
          items: [
            SalomonBottomBarItem(
              icon: Image.asset('images/web-content.png'),
              title: const Text(""),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: Image.asset('images/open-book.png'),
              title: const Text(""),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: Image.asset('images/home-button 1.png'),
              title: const Text(""),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: Image.asset('images/book.png'),
              title: const Text(""),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: Image.asset('images/user (2) 1.png'),
              title: const Text(""),
              selectedColor: Colors.orange,
            ),
          ]),
    );
  }

  Widget chipBuilder({required IconData icon, required String chipTitle}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Chip(
        backgroundColor: _isSelected ? Colors.orange : Colors.grey[350],
        avatar: Icon(
          icon,
          color: Colors.black,
        ),
        label: Text(chipTitle),
        side: BorderSide.none,
      ),
    );
  }
}

class CardBuilder extends StatelessWidget {
  const CardBuilder(
      {super.key, required this.imagePath, required this.bookDesc});
  final String imagePath;
  final String bookDesc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Column(
        children: [
          Image.asset(imagePath),
          Text(bookDesc),
        ],
      ),
    );
  }
}

class ButtomBar extends StatelessWidget {
  const ButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(items: [
        /// Profile
        SalomonBottomBarItem(
          icon: Image.asset('images/user (2) 1.png'),
          title: const Text("me"),
          selectedColor: Colors.orange,
        ),
      ]),
    );
  }
}
