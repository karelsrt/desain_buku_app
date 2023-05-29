import 'package:flutter/material.dart';
import 'package:desain_buku_app/core.dart';

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
                const TreadingnowView()
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
