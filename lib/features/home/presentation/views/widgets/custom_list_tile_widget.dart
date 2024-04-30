import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

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
          // Get.to(
          //   const BookPreviewView(),
          //   transition: Transition.fade,
          //   duration: const Duration(seconds: 2),
          // );
        },
        child: Row(
          children: [
            BookWidget(
              width: MediaQuery.of(context).size.width * 0.19,
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Harry Potter and the Goblet of Fire",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99€",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      RatingWidget()
                    ],
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
