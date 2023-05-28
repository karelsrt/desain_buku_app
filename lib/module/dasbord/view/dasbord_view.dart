import 'package:flutter/material.dart';
import 'package:desain_buku_app/core.dart';

import '../widget/category_picker.dart';

class DasbordView extends StatefulWidget {
  const DasbordView({Key? key}) : super(key: key);

  Widget build(context, DasbordController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(6),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header(),
                      SizedBox(
                        height: 15,
                      ),
                      Cari(),
                      SizedBox(
                        height: 15,
                      ),
                      RecentbookView()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Menutengah(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trending Now",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SingleChildScrollView(
                        controller: ScrollController(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(10, (index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 150.0,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 120.0,
                                        color: Colors.transparent,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          child: Image.network(
                                            "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 9.0,
                                ),
                                const Text(
                                  "Guy Kawasaki",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffBDBDBD),
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  "Enchantment",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DasbordView> createState() => DasbordController();
}

class Menutengah extends StatelessWidget {
  const Menutengah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return QCategoryPicker(
      items: const [
        {
          "label": "All Books",
          "value": "allbooks",
        },
        {
          "label": "Comic",
          "value": "comic",
        },
        {
          "label": "Novel",
          "value": "novel",
        },
        {
          "label": "Mangga",
          "value": "mangga",
        },
        {
          "label": "Fairy Tales",
          "value": "fairytales",
        }
      ],
      onChanged: (index, label, value, item) {},
    );
  }
}

class Cari extends StatelessWidget {
  const Cari({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Center(
        child: TextField(
          style: TextStyle(
            color: Colors.grey[800],
          ),
          decoration: InputDecoration(
            hintText: "Find Your Favorite Book",
            contentPadding: const EdgeInsets.all(20),
            suffixIcon: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color(0xff098B5C),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            "https://i.ibb.co/PGv8ZzG/me.jpg",
          ),
        ),
        const SizedBox(
          width: 13,
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Sarah,",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Good Morning",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffBDBDBD),
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.list,
            size: 30,
          ),
        ),
      ],
    );
  }
}
