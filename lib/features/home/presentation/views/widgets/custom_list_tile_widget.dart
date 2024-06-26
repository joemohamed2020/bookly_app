import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          FocusManager.instance.primaryFocus?.unfocus();
          GoRouter.of(context).push(AppRouter.bookPreviewRoute);
        },
        child: Row(
          children: [
            BookWidget(
              width: MediaQuery.of(context).size.width * 0.19,
              image:"https://st.depositphotos.com/1741875/1237/i/380/depositphotos_12376816-stock-photo-stack-of-old-books.jpg"
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
