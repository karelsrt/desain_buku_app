import 'package:flutter/material.dart';
import 'package:desain_buku_app/core.dart';
import '../controller/dasbord_controller.dart';

class DasbordView extends StatefulWidget {
  const DasbordView({Key? key}) : super(key: key);

  Widget build(context, DasbordController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Header(),
              ),
              const Cari(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recent Book",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                width: 220,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      13,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFfEDEDED),
                                    width: 1,
                                  ),
                                ),
                                child: SizedBox(
                                  height: 100.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            width: 100,
                                            "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Text(
                                          "text",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DasbordView> createState() => DasbordController();
}

class Cari extends StatelessWidget {
  const Cari({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: const BorderRadius.all(
            Radius.circular(
              15,
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
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.grey[600],
              ),
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
          width: 10.0,
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hallo Sarah",
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Good Morning",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.list,
            size: 24.0,
          ),
        ),
      ],
    );
  }
}
