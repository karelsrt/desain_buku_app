import 'package:flutter/material.dart';
import 'package:desain_buku_app/core.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../controller/Recentbook_controller.dart';

class RecentbookView extends StatefulWidget {
  const RecentbookView({Key? key}) : super(key: key);

  Widget build(context, RecentbookController controller) {
    controller.view = this;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Book",
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
            children: List.generate(controller.buku.length, (index) {
              var items = controller.buku[index];
              var kali = items['percen'] * 100;
              return SizedBox(
                height: 250.0,
                child: Row(
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        border: Border.all(
                          color: const Color(0xFFF3F3F3),
                          width: 3,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                items['gambar'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(19),
                              child: Column(
                                children: [
                                  Text(
                                    items['judul'],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  CircularPercentIndicator(
                                    reverse: true,
                                    radius: 50,
                                    lineWidth: 7,
                                    percent: items['percen'],
                                    circularStrokeCap: CircularStrokeCap.round,
                                    animation: true,
                                    progressColor: Colors.green,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${kali.toString()} % Completed",
                                      style: const TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffAFAFAF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  @override
  State<RecentbookView> createState() => RecentbookController();
}
