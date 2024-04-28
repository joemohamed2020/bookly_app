import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/book_preview/presentation/views/book_preview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () {
          Get.to(
            const BookPreview(),
            transition: Transition.fade,
            duration: const Duration(seconds: 2),
          );
        },
        child: Row(
          children: [
            BookWidget(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20),
                  const Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, right: 64),
                    child: Row(
                      children: [
                        const Text(
                          "19.99€",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        GestureDetector(
                          child: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        const Text(
                          "4.5",
                          style: Styles.textStyle16,
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const Text(
                          "(52145)",
                          style: Styles.textStyle14,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
